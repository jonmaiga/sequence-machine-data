import Prog.A007.A0075
import Proof.A000.A000040

/-- A007504 is the sum of the first `n` primes. -/
theorem A007504.anchor (n : ℕ) : A007504 n = ∑ i ∈ Finset.range n, (Nat.nth Nat.Prime i : ℤ) := by
  have h : ∀ k, A014284.P18183547548072881472.a k = 1 + ∑ i ∈ Finset.range k, (Nat.nth Nat.Prime i : ℤ) := by
    intro k
    simp only [A014284.P18183547548072881472.a]
    induction k with
    | zero => simp [SequenceMachineLib.rec_of_lt]
    | succ k ih =>
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
      rw [ih, Finset.sum_range_succ, A000040.anchor _ (by omega), Nat.add_sub_cancel]
      ring
  simp [A007504, A007504.P14310834286015847203.a, A014284, h]
