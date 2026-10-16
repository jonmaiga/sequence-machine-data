import Prog.A000.A0002
import Mathlib.Tactic

open SequenceMachineLib

/-! The canonical program of A000217 is the recursion `a(n-1)+n` with `a(0) = 0`, unfolded with
`SequenceMachineLib.rec_of_le` into a step lemma, its closed form follows by induction. -/

local notation "tri" => A000217.P834084756573057592.a

private theorem tri_zero : tri 0 = 0 := by
  simp [A000217.P834084756573057592.a, rec_of_lt]

private theorem tri_succ (n : ℕ) : tri (n + 1) = (n + 1) + tri n := by
  simp only [A000217.P834084756573057592.a]
  rw [rec_of_le _ _ (by simp)]
  simp [Nat.add_comm]

private theorem tri_choose (n : ℕ) : tri n = Nat.choose (n + 1) 2 := by
  induction n with
  | zero => simp [tri_zero]
  | succ n ih => rw [tri_succ, ih, Nat.choose_succ_succ' (n + 1), Nat.choose_one_right]

/-- `C(n+1, 2)` -/
theorem A000217.P10269402890581615239.correct : A000217.P10269402890581615239.Spec := by
  intro n
  simp [A000217, A000217.P10269402890581615239.a, memo_apply, tri_choose]
