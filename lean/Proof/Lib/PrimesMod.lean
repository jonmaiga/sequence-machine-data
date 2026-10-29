import Mathlib.NumberTheory.LSeries.PrimesInAP

/-! Primes in a residue class `r` mod `m`, listed by a strictly increasing program `f` onto the class, for the anchors
of the sequences "Primes congruent to r mod m" (Dirichlet's theorem gives the infinitely many primes). -/

namespace SequenceProof

/-- Dirichlet: there are infinitely many primes `p` with `p % m = r` when `r` is coprime to `m`. -/
theorem primes_mod_infinite {m r : ℕ} (hm : 0 < m) (hr : r < m) (hc : r.Coprime m) :
    (Set.ofPred fun p => p.Prime ∧ p % m = r).Infinite := by
  refine Set.infinite_of_not_bddAbove fun ⟨b, hb⟩ => ?_
  obtain ⟨p, hpb, hp, hmod⟩ := Nat.forall_exists_prime_gt_and_modEq b hm.ne' hc
  have : p % m = r := by rw [hmod, Nat.mod_eq_of_lt hr]
  exact absurd (hb ⟨hp, this⟩) (by omega)

/-- The primes `p` with `p % m = r`, listed by picking a strictly increasing `f` (onto the residue class) at the
indices where it is prime. -/
theorem nth_primes_mod (f : ℕ → ℕ) (m r : ℕ) (hm : 0 < m) (hr : r < m) (hc : r.Coprime m)
    (hmono : ∀ i j, i < j → f i < f j) (hval : ∀ i, 2 ≤ f i → f i % m = r)
    (hsurj : ∀ x, x % m = r → ∃ i, f i = x) (k : ℕ) :
    f (Nat.nth (fun j => (f j).Prime) k) = Nat.nth (fun p => p.Prime ∧ p % m = r) k := by
  have hinf := primes_mod_infinite hm hr hc
  have key := Nat.nth_comp_of_strictMono (p := fun p => p.Prime ∧ p % m = r) (n := k)
    (fun i j h => hmono i j h) (fun x hx => hsurj x hx.2) (fun hfin => absurd hfin hinf)
  rw [← key]
  congr 2
  funext j
  exact propEq (and_iff_left_of_imp fun hp => hval j hp.two_le)
where propEq {a b : Prop} (h : a ↔ b) : b = a := (propext h).symm

/-- `nth_primes_mod` for a progression over `ℤ` (negative values are no primes, `toNat` makes them `0`). -/
theorem nth_primes_mod_int (f : ℕ → ℤ) (m r : ℕ) (hm : 0 < m) (hr : r < m) (hc : r.Coprime m)
    (hmono : ∀ i j, i < j → (f i).toNat < (f j).toNat) (hval : ∀ i, 2 ≤ (f i).toNat → (f i).toNat % m = r)
    (hsurj : ∀ x : ℕ, x % m = r → ∃ i, (f i).toNat = x) (k : ℕ) :
    f (Nat.nth (fun j => (f j).toNat.Prime) k) = (Nat.nth (fun p => p.Prime ∧ p % m = r) k : ℤ) := by
  have h := nth_primes_mod (fun j => (f j).toNat) m r hm hr hc hmono hval hsurj k
  have hp := Nat.nth_mem_of_infinite (primes_mod_infinite hm hr hc) k
  rw [← h] at hp ⊢
  have := hp.1.two_le
  omega

/-- The numbers whose residue mod `M` is in `L` are infinitely many when one residue `r < M` is in `L`. -/
theorem mod_mem_infinite (M r : ℕ) (L : List ℕ) (hr : r ∈ L) (hrM : r < M) :
    (Set.ofPred fun k => k % M ∈ L).Infinite :=
  Set.infinite_of_injective_forall_mem (f := fun t => M * t + r)
    (fun a b h => Nat.eq_of_mul_eq_mul_left (Nat.zero_lt_of_lt hrM) (by simp only at h; omega))
    (fun t => by simp [Set.mem_ofPred, Nat.mul_add_mod, Nat.mod_eq_of_lt hrM, hr])

/-- Dirichlet: infinitely many primes have their residue mod `M` in `L` when a residue in `L` is coprime to `M`. -/
theorem primes_mod_mem_infinite (M r : ℕ) (L : List ℕ) (hr : r ∈ L) (hrM : r < M) (hc : r.Coprime M) :
    (Set.ofPred fun p => p.Prime ∧ p % M ∈ L).Infinite :=
  Set.Infinite.mono (fun p (hp : p.Prime ∧ p % M = r) => ⟨hp.1, by rw [hp.2]; exact hr⟩)
    (primes_mod_infinite (Nat.zero_lt_of_lt hrM) hrM hc)

/-- Picking the enumeration `nth q` at the indices where it satisfies `P` enumerates `P ∧ q`. -/
theorem nth_comp_nth (q P : ℕ → Prop) (hq : (Set.ofPred q).Infinite)
    (hinf : (Set.ofPred fun x => P x ∧ q x).Infinite) (k : ℕ) :
    Nat.nth q (Nat.nth (fun j => P (Nat.nth q j)) k) = Nat.nth (fun x => P x ∧ q x) k := by
  have key := Nat.nth_comp_of_strictMono (p := fun x => P x ∧ q x) (n := k) (Nat.nth_strictMono hq)
    (fun x hx => by rw [Nat.range_nth_of_infinite hq]; exact hx.2) (fun hf => absurd hf hinf)
  rw [← key]
  congr 2
  funext j
  exact propext (and_iff_left (Nat.nth_mem_of_infinite hq j)).symm

/-- `primes_mod_mem_infinite` for a `Finset` of residues. -/
theorem primes_mod_finset_infinite (M r : ℕ) (S : Finset ℕ) (hr : r ∈ S) (hrM : r < M) (hc : r.Coprime M) :
    (Set.ofPred fun p => p.Prime ∧ p % M ∈ S).Infinite :=
  Set.Infinite.mono (fun p (hp : p.Prime ∧ p % M = r) => ⟨hp.1, by rw [hp.2]; exact hr⟩)
    (primes_mod_infinite (Nat.zero_lt_of_lt hrM) hrM hc)

/-- The values of the enumeration of an infinite `p` are the numbers satisfying `p`. -/
theorem exists_cast_nth_iff (p : ℕ → Prop) (hp : (Set.ofPred p).Infinite) (x : ℕ) :
    (∃ j, (Nat.nth p j : ℤ) = x) ↔ p x := by
  simp only [Nat.cast_inj]
  exact (Set.ext_iff.mp (Nat.range_nth_of_infinite hp) x)

/-- `nth_primes_mod` where the values of `f` are only known at primes: `f` may also hit numbers outside the class
(never prime) and miss numbers of the class that are not prime. -/
theorem nth_primes_mod_of_prime (f : ℕ → ℕ) (m r : ℕ) (hm : 0 < m) (hr : r < m) (hc : r.Coprime m)
    (hmono : ∀ i j, i < j → f i < f j) (hval : ∀ i, (f i).Prime → f i % m = r)
    (hsurj : ∀ x, x.Prime → x % m = r → ∃ i, f i = x) (k : ℕ) :
    f (Nat.nth (fun j => (f j).Prime) k) = Nat.nth (fun p => p.Prime ∧ p % m = r) k := by
  have hinf := primes_mod_infinite hm hr hc
  have key := Nat.nth_comp_of_strictMono (p := fun p => p.Prime ∧ p % m = r) (n := k)
    (fun i j h => hmono i j h) (fun x hx => hsurj x hx.1 hx.2) (fun hfin => absurd hfin hinf)
  rw [← key]
  congr 2
  funext j
  exact (propext (and_iff_left_of_imp fun hp => hval j hp)).symm

/-- `nth_primes_mod_of_prime` for a progression over `ℤ`. -/
theorem nth_primes_mod_int_of_prime (f : ℕ → ℤ) (m r : ℕ) (hm : 0 < m) (hr : r < m) (hc : r.Coprime m)
    (hmono : ∀ i j, i < j → (f i).toNat < (f j).toNat) (hval : ∀ i, (f i).toNat.Prime → (f i).toNat % m = r)
    (hsurj : ∀ x : ℕ, x.Prime → x % m = r → ∃ i, (f i).toNat = x) (k : ℕ) :
    f (Nat.nth (fun j => (f j).toNat.Prime) k) = (Nat.nth (fun p => p.Prime ∧ p % m = r) k : ℤ) := by
  have h := nth_primes_mod_of_prime (fun j => (f j).toNat) m r hm hr hc hmono hval hsurj k
  have hp := Nat.nth_mem_of_infinite (primes_mod_infinite hm hr hc) k
  rw [← h] at hp ⊢
  have := hp.1.two_le
  omega

/-- A prime that `q ≠ 1` divides is `q`. -/
theorem prime_mod_eq_self {x : ℕ} (hp : x.Prime) (q : ℕ) (hq : q ≠ 1) : x % q = 0 → x = q := fun h =>
  ((hp.eq_one_or_self_of_dvd q (Nat.dvd_of_mod_eq_zero h)).resolve_left hq).symm

end SequenceProof
