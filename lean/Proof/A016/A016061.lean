import Prog.A016.A0160
import Proof.Lib.Integral

/-- A016061: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A016061.anchor (n : ℕ) :
    (A016061 n : ℚ) = (n * (n + 1) * (4 * n + 5) : ℚ) / 6 := by
  have hr : ∀ m, A016061.P6789614648281652611.a (m + 4) = (4 : ℚ) * A016061.P6789614648281652611.a (m + 3) + (-6 : ℚ) * A016061.P6789614648281652611.a (m + 2) + (4 : ℚ) * A016061.P6789614648281652611.a (m + 1) + (-1 : ℚ) * A016061.P6789614648281652611.a m := by
    intro m
    simp only [A016061.P6789614648281652611.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A016061.P6789614648281652611.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A016061.P6789614648281652611.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A016061.P6789614648281652611.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13, by norm_num [A016061.P6789614648281652611.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨34, by norm_num [A016061.P6789614648281652611.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A016061.P6789614648281652611.a n = (n * (n + 1) * (4 * n + 5) : ℚ) / 6 := by simp only [A016061.P6789614648281652611.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A016061, hz, SequenceProof.roundAway_intCast]
