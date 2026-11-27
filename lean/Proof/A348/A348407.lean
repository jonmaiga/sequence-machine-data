import Prog.A348.A3484
import Proof.Lib.Integral

/-- A348407: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A348407.anchor (n : ℕ) :
    (A348407 n : ℚ) = (((n + 1) * 3 * 2 ^ (n + 1) + 29 * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 9 := by
  have hr : ∀ m, A348407.P17157534765932242987.a (m + 3) = (3 : ℚ) * A348407.P17157534765932242987.a (m + 2) + (-4 : ℚ) * A348407.P17157534765932242987.a m := by
    intro m
    simp only [A348407.P17157534765932242987.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A348407.P17157534765932242987.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨4, by norm_num [A348407.P17157534765932242987.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A348407.P17157534765932242987.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨21, by norm_num [A348407.P17157534765932242987.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -4 * z0, ?_⟩
        rw [hr, h2, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A348407.P17157534765932242987.a n = (((n + 1) * 3 * 2 ^ (n + 1) + 29 * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 9 := by simp only [A348407.P17157534765932242987.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A348407, hz, SequenceProof.roundAway_intCast]
