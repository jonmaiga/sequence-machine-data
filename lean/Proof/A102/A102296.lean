import Prog.A102.A1022
import Proof.Lib.Integral

/-- A102296: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A102296.anchor (n : ℕ) :
    (A102296 n : ℚ) = (1 : ℚ) / 6 * (n + 1 : ℚ) * (10 * n ^ 2 + 17 * n + 12 : ℚ) := by
  have hr : ∀ m, A102296.P1853889582806108557.a (m + 4) = (4 : ℚ) * A102296.P1853889582806108557.a (m + 3) + (-6 : ℚ) * A102296.P1853889582806108557.a (m + 2) + (4 : ℚ) * A102296.P1853889582806108557.a (m + 1) + (-1 : ℚ) * A102296.P1853889582806108557.a m := by
    intro m
    simp only [A102296.P1853889582806108557.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A102296.P1853889582806108557.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A102296.P1853889582806108557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13, by norm_num [A102296.P1853889582806108557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨43, by norm_num [A102296.P1853889582806108557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨102, by norm_num [A102296.P1853889582806108557.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -6 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A102296.P1853889582806108557.a n = (1 : ℚ) / 6 * (n + 1 : ℚ) * (10 * n ^ 2 + 17 * n + 12 : ℚ) := by simp only [A102296.P1853889582806108557.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A102296, hz, SequenceProof.roundAway_intCast]
