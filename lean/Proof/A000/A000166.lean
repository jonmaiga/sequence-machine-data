import Prog.A000.A0001
import Mathlib.Combinatorics.Derangements.Finite

/-! The canonical program of A000166 is the recursion `n*a(n-1)+(-1)^n` with `a(0) = 1`, Mathlib's
`numDerangements_succ` is the same recursion. -/

local notation "der" => A000166.P17301805902585999237.a

private theorem der_succ (n : ℕ) : der (n + 1) = (n + 1 : ℤ) * der n + (-1) ^ (n + 1) := by
  simp only [A000166.P17301805902585999237.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

private theorem der_eq (n : ℕ) : der n = numDerangements n := by
  induction n with
  | zero => simp [A000166.P17301805902585999237.a, SequenceMachineLib.rec_of_lt]
  | succ n ih =>
    rw [der_succ, ih, numDerangements_succ]
    ring

/-- A000166 is the number of derangements, `numDerangements`. -/
theorem A000166.anchor (n : ℕ) : A000166 n = (numDerangements n : ℤ) := by
  simp [A000166, der_eq]
