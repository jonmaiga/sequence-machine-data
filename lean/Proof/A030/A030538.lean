import Prog.A030.A0305
import Proof.Lib.Integral

/-- A030538: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A030538.anchor (n : ℕ) :
    (A030538 n : ℚ) = ((2 ^ n + 2) * (2 ^ n + 4) * (4 ^ n + 9 * 2 ^ n + 38) : ℚ) / 720 := by
  have hr : ∀ m, A030538.P16310134890815451101.a (m + 5) = (31 : ℚ) * A030538.P16310134890815451101.a (m + 4) + (-310 : ℚ) * A030538.P16310134890815451101.a (m + 3) + (1240 : ℚ) * A030538.P16310134890815451101.a (m + 2) + (-1984 : ℚ) * A030538.P16310134890815451101.a (m + 1) + (1024 : ℚ) * A030538.P16310134890815451101.a m := by
    intro m
    simp only [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A030538.P16310134890815451101.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨29, by norm_num [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨219, by norm_num [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨31 * z4 + -310 * z3 + 1240 * z2 + -1984 * z1 + 1024 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A030538.P16310134890815451101.a n = ((2 ^ n + 2) * (2 ^ n + 4) * (4 ^ n + 9 * 2 ^ n + 38) : ℚ) / 720 := by simp only [A030538.P16310134890815451101.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A030538, hz, SequenceProof.roundAway_intCast]
