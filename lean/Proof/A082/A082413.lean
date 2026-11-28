import Prog.A082.A0824
import Proof.Lib.Integral

/-- A082413: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A082413.anchor (n : ℕ) :
    (A082413 n : ℚ) = (2 * 9 ^ n + 3 ^ n : ℚ) / 3 := by
  have hr : ∀ m, A082413.P10734426145198917437.a (m + 2) = (12 : ℚ) * A082413.P10734426145198917437.a (m + 1) + (-27 : ℚ) * A082413.P10734426145198917437.a m := by
    intro m
    simp only [A082413.P10734426145198917437.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A082413.P10734426145198917437.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A082413.P10734426145198917437.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A082413.P10734426145198917437.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨12 * z1 + -27 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A082413.P10734426145198917437.a n = (2 * 9 ^ n + 3 ^ n : ℚ) / 3 := by simp only [A082413.P10734426145198917437.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A082413, hz, SequenceProof.roundAway_intCast]
