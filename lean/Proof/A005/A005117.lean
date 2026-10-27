import Prog.A005.A0051
import Proof.A007.A007947
import Mathlib.Data.Nat.Squarefree
import Mathlib.NumberTheory.PrimeCounting

/-! The canonical program of A005117 lists the record values of the radical `rad(1), rad(2), ...`. Since
`rad(k) ≤ k` with equality exactly for squarefree `k`, and `rad(k)` is itself squarefree, the records are at the
squarefree `k` and their values are those `k`. -/

private theorem radical_of_squarefree {n : ℕ} (h : Squarefree n) : UniqueFactorizationMonoid.radical n = n := by
  rw [Nat.radical_eq_prod_primeFactors, Nat.prod_primeFactors_of_squarefree h]

/-- `rad(j + 1)` exceeds all earlier values of the radical exactly when `j + 1` is squarefree. -/
private theorem record_iff (j : ℕ) :
    (∀ l < j, UniqueFactorizationMonoid.radical (l + 1) < UniqueFactorizationMonoid.radical (j + 1)) ↔
      Squarefree (j + 1) := by
  constructor
  · intro h
    by_contra hsq
    have hrd : UniqueFactorizationMonoid.radical (j + 1) ∣ j + 1 := UniqueFactorizationMonoid.radical_dvd_self
    have hr0 : 0 < UniqueFactorizationMonoid.radical (j + 1) := Nat.pos_of_dvd_of_pos hrd (by omega)
    have hrs : Squarefree (UniqueFactorizationMonoid.radical (j + 1)) := UniqueFactorizationMonoid.squarefree_radical
    have hlt : UniqueFactorizationMonoid.radical (j + 1) < j + 1 :=
      lt_of_le_of_ne (Nat.le_of_dvd (by omega) hrd) fun e => hsq (e ▸ hrs)
    have := h (UniqueFactorizationMonoid.radical (j + 1) - 1) (by omega)
    rw [Nat.sub_add_cancel hr0, radical_of_squarefree hrs] at this
    exact lt_irrefl _ this
  · intro hsq l hl
    rw [radical_of_squarefree hsq]
    have := Nat.le_of_dvd (by omega) (UniqueFactorizationMonoid.radical_dvd_self (a := l + 1))
    omega

/-- A005117 are the squarefree numbers. -/
theorem A005117.anchor (n : ℕ) (hn : 1 ≤ n) : A005117 n = (Nat.nth Squarefree (n - 1) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hinf : (Set.ofPred Squarefree).Infinite :=
    Nat.infinite_setOfPred_prime.mono fun p (hp : Nat.Prime p) => (Nat.Prime.prime hp).squarefree
  have h47 : ∀ j, A005117.P8954503998193661401.f1 j = ((UniqueFactorizationMonoid.radical (j + 1) : ℕ) : ℤ) :=
    fun j => by rw [A005117.P8954503998193661401.f1, SequenceMachineLib.memo_apply, A007947.anchor _ (by omega)]
  simp only [A005117, A005117.P8954503998193661401.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    SequenceMachineLib.nth_eq]
  simp only [h47, Nat.cast_lt, record_iff, Nat.cast_inj]
  have hmem := Nat.nth_mem_of_infinite hinf m
  have hne : Nat.nth Squarefree m ≠ 0 := fun e => not_squarefree_zero (e ▸ hmem)
  rw [Nat.nth_add_one (p := Squarefree) not_squarefree_zero hne, radical_of_squarefree hmem]
