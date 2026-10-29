import Mathlib.Data.Nat.Nth
import Mathlib.Tactic

/-! The numbers whose residue mod `M` is in a list `L` of residues, for the anchors of the sequences "Numbers that are
congruent to {…} mod M": the `n`-th is `M * (n / s) + L[n % s]`. -/

namespace SequenceProof

/-- `n / s` and `n % s` of `s * q + r` for `r < s`. -/
theorem div_mod_of_lt {s q r : ℕ} (h : r < s) : (s * q + r) / s = q ∧ (s * q + r) % s = r :=
  (Nat.div_mod_unique (by omega)).mpr ⟨by ring, h⟩

/-- The numbers whose residue mod `M` is in the strictly increasing list `L` of residues below `M`, in order: the
`n`-th (0-based) is `M * (n / s) + L[n % s]` with `s` the length of `L`. -/
theorem nth_mod_mem (M s : ℕ) (L : List ℕ) (hs : L.length = s) (hL : L.Pairwise (· < ·)) (hM : ∀ x ∈ L, x < M)
    (hpos : 0 < s) (n : ℕ) :
    Nat.nth (fun k => k % M ∈ L) n = M * (n / s) + L.getD (n % s) 0 := by
  subst hs
  have get_lt : ∀ i, i < L.length → L.getD i 0 < M := fun i hi => by
    rw [List.getD_eq_getElem _ _ hi]; exact hM _ (List.getElem_mem hi)
  have get_mem : ∀ i, i < L.length → L.getD i 0 ∈ L := fun i hi => by
    rw [List.getD_eq_getElem _ _ hi]; exact List.getElem_mem hi
  set c : ℕ → ℕ := fun n => M * (n / L.length) + L.getD (n % L.length) 0 with hc
  have hmono : StrictMono c := by
    apply strictMono_nat_of_lt_succ
    intro n
    have hr := Nat.mod_lt n hpos
    have hn := Nat.div_add_mod n L.length
    simp only [hc]
    rcases Nat.lt_or_ge (n % L.length + 1) L.length with h | h
    · obtain ⟨e2, e1⟩ := div_mod_of_lt (q := n / L.length) h
      rw [show L.length * (n / L.length) + (n % L.length + 1) = n + 1 by omega] at e1 e2
      rw [e1, e2, List.getD_eq_getElem _ _ hr, List.getD_eq_getElem _ _ h]
      have := List.pairwise_iff_getElem.mp hL (n % L.length) (n % L.length + 1) hr h (Nat.lt_succ_self _)
      omega
    · obtain ⟨e2, e1⟩ := div_mod_of_lt (q := n / L.length + 1) hpos
      rw [show L.length * (n / L.length + 1) + 0 = n + 1 by rw [mul_add]; omega] at e1 e2
      rw [e1, e2, mul_add]
      have := get_lt _ hr
      omega
  have hval : ∀ i, c i % M ∈ L := fun i => by
    have hr := Nat.mod_lt i hpos
    simp only [hc, Nat.mul_add_mod, Nat.mod_eq_of_lt (get_lt _ hr)]
    exact get_mem _ hr
  have hsurj : ∀ x, x % M ∈ L → x ∈ Set.range c := fun x hx => by
    obtain ⟨t, ht, hxt⟩ := List.mem_iff_getElem.mp hx
    refine ⟨L.length * (x / M) + t, ?_⟩
    obtain ⟨e2, e1⟩ := div_mod_of_lt (q := x / M) ht
    simp only [hc, e1, e2, List.getD_eq_getElem _ _ ht, hxt]
    exact Nat.div_add_mod x M
  have hinf : (Set.ofPred fun k => k % M ∈ L).Infinite :=
    Set.infinite_of_injective_forall_mem hmono.injective hval
  have key := Nat.nth_comp_of_strictMono (p := fun k => k % M ∈ L) (n := n) hmono hsurj
    (fun hf => absurd hf hinf)
  rw [← key, show (fun i => c i % M ∈ L) = fun _ => True from funext fun i => eq_true (hval i), Nat.nth_true]

end SequenceProof
