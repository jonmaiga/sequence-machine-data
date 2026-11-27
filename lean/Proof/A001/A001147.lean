import Prog.A001.A0011
import Mathlib.Data.Nat.Factorial.DoubleFactorial

/-- A001147: the double factorial of the odd numbers, `(2n-1)!!`. -/
theorem A001147.anchor (n : ℕ) : A001147 n = ((2 * n - 1).doubleFactorial : ℤ) := by
  simp only [A001147, A001147.P13514244325274963007.a]
  induction n with
  | zero => rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]; simp
  | succ k ih =>
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [Nat.lt_add_one, ↓reduceIte, Nat.add_sub_cancel, ih]
    rcases k with _ | k
    · simp
    · rw [show 2 * (k + 1 + 1) - 1 = (2 * k + 1) + 2 by omega, Nat.doubleFactorial_add_two,
        show 2 * (k + 1) - 1 = 2 * k + 1 by omega]
      push_cast
      ring
