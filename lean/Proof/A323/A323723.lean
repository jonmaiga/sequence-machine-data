import Prog.A323.A3237
import Proof.Lib.Integral

/-- A323723: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A323723.anchor (n : ℕ) :
    (A323723 n : ℚ) = (-2 - (-1) ^ n * (-2 + (n : ℤ)) + (n : ℤ) + (2 * n ^ 3 : ℤ) : ℚ) / 4 := by
  have hr : ∀ m, A323723.P5227258990074915134.a (m + 6) = (2 : ℚ) * A323723.P5227258990074915134.a (m + 5) + (1 : ℚ) * A323723.P5227258990074915134.a (m + 4) + (-4 : ℚ) * A323723.P5227258990074915134.a (m + 3) + (1 : ℚ) * A323723.P5227258990074915134.a (m + 2) + (2 : ℚ) * A323723.P5227258990074915134.a (m + 1) + (-1 : ℚ) * A323723.P5227258990074915134.a m := by
    intro m
    simp only [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A323723.P5227258990074915134.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨14, by norm_num [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨32, by norm_num [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨64, by norm_num [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z5 + 1 * z4 + -4 * z3 + 1 * z2 + 2 * z1 + -1 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A323723.P5227258990074915134.a n = (-2 - (-1) ^ n * (-2 + (n : ℤ)) + (n : ℤ) + (2 * n ^ 3 : ℤ) : ℚ) / 4 := by simp only [A323723.P5227258990074915134.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A323723, hz, SequenceProof.roundAway_intCast]
