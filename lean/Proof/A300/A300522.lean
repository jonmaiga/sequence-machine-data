import Prog.A300.A3005
import Proof.Lib.Integral

/-- A300522: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A300522.anchor (n : ℕ) :
    (A300522 n : ℚ) = ((5 * n + 3) * (5 * n + 4) * (5 * n + 5) : ℚ) / 6 := by
  have hr : ∀ m, A300522.P3467218236212348100.a (m + 4) = (4 : ℚ) * A300522.P3467218236212348100.a (m + 3) + (-6 : ℚ) * A300522.P3467218236212348100.a (m + 2) + (4 : ℚ) * A300522.P3467218236212348100.a (m + 1) + (-1 : ℚ) * A300522.P3467218236212348100.a m := by
    intro m
    simp only [A300522.P3467218236212348100.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A300522.P3467218236212348100.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨10, by norm_num [A300522.P3467218236212348100.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨120, by norm_num [A300522.P3467218236212348100.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨455, by norm_num [A300522.P3467218236212348100.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1140, by norm_num [A300522.P3467218236212348100.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A300522.P3467218236212348100.a n = ((5 * n + 3) * (5 * n + 4) * (5 * n + 5) : ℚ) / 6 := by simp only [A300522.P3467218236212348100.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A300522, hz, SequenceProof.roundAway_intCast]
