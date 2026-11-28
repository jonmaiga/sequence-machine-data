import Prog.A323.A3233
import Proof.Lib.Integral

/-- A323397: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A323397.anchor (n : ℕ) :
    (A323397 n : ℚ) = ((4 ^ n + 15 * n : ℤ) - 1 : ℚ) / 9 := by
  have hr : ∀ m, A323397.P17280922275407501805.a (m + 3) = (6 : ℚ) * A323397.P17280922275407501805.a (m + 2) + (-9 : ℚ) * A323397.P17280922275407501805.a (m + 1) + (4 : ℚ) * A323397.P17280922275407501805.a m := by
    intro m
    simp only [A323397.P17280922275407501805.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A323397.P17280922275407501805.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A323397.P17280922275407501805.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A323397.P17280922275407501805.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A323397.P17280922275407501805.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z2 + -9 * z1 + 4 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A323397.P17280922275407501805.a n = ((4 ^ n + 15 * n : ℤ) - 1 : ℚ) / 9 := by simp only [A323397.P17280922275407501805.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A323397, hz, SequenceProof.roundAway_intCast]
