import Prog.A051.A0517
import Proof.Lib.Integral

/-- A051746: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A051746.anchor (n : ℕ) :
    (A051746 (n + 1) : ℚ) = ((n + 1) * (n + 8) * (n + 2) * ((n + 1) ^ 2 + 2 * (n + 1) + 12) : ℚ) / 120 := by
  have hr : ∀ m, A051746.P8081823735203920557.a (m + 6) = (6 : ℚ) * A051746.P8081823735203920557.a (m + 5) + (-15 : ℚ) * A051746.P8081823735203920557.a (m + 4) + (20 : ℚ) * A051746.P8081823735203920557.a (m + 3) + (-15 : ℚ) * A051746.P8081823735203920557.a (m + 2) + (6 : ℚ) * A051746.P8081823735203920557.a (m + 1) + (-1 : ℚ) * A051746.P8081823735203920557.a m := by
    intro m
    simp only [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A051746.P8081823735203920557.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨27, by norm_num [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨66, by norm_num [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨141, by norm_num [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨273, by norm_num [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z5 + -15 * z4 + 20 * z3 + -15 * z2 + 6 * z1 + -1 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A051746.P8081823735203920557.a n = ((n + 1) * (n + 8) * (n + 2) * ((n + 1) ^ 2 + 2 * (n + 1) + 12) : ℚ) / 120 := by simp only [A051746.P8081823735203920557.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A051746, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
