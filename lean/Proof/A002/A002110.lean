import Prog.A002.A0021
import Proof.A000.A000040

/-- A002110 is the primorial: the product of the first `n` primes. -/
theorem A002110.anchor (n : ℕ) : A002110 n = ∏ i ∈ Finset.range n, (Nat.nth Nat.Prime i : ℤ) := by
  simp only [A002110, A002110.P13704446489392701398.a]
  induction n with
  | zero => simp [SequenceMachineLib.rec_of_lt]
  | succ k ih =>
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    rw [ih, Finset.prod_range_succ, A000040.anchor _ (by omega), Nat.add_sub_cancel, mul_comm]
