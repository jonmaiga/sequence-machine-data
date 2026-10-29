import Prog.A002.A0020
import Proof.A000.A000010

/-- A002088 is the sum of the totient function: `φ(1) + ... + φ(n)`. -/
theorem A002088.anchor (n : ℕ) : A002088 n = ∑ k ∈ Finset.Icc 1 n, (Nat.totient k : ℤ) := by
  simp only [A002088, A002088.P11293466613211840242.a]
  induction n with
  | zero => simp [SequenceMachineLib.rec_of_lt]
  | succ k ih =>
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    rw [ih, Finset.sum_Icc_succ_top (by omega), A000010.anchor _ (by omega)]
