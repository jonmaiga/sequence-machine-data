import Prog.A104.A1047
import Proof.Lib.Integral

/-- A104747: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A104747.anchor (n : ℕ) :
    (A104747 (n + 1) : ℚ) = (((n : ℤ) - 2) * (2 ^ (n + 1) : ℤ) : ℚ) + ((n + 1) * (n + 4) : ℚ) / 2 + 3 := by
  have hr : ∀ m, A104747.P7849291554087070091.a (m + 5) = (7 : ℚ) * A104747.P7849291554087070091.a (m + 4) + (-19 : ℚ) * A104747.P7849291554087070091.a (m + 3) + (25 : ℚ) * A104747.P7849291554087070091.a (m + 2) + (-16 : ℚ) * A104747.P7849291554087070091.a (m + 1) + (4 : ℚ) * A104747.P7849291554087070091.a m := by
    intro m
    simp only [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A104747.P7849291554087070091.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12, by norm_num [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨33, by norm_num [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨87, by norm_num [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z4 + -19 * z3 + 25 * z2 + -16 * z1 + 4 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A104747.P7849291554087070091.a n = (((n : ℤ) - 2) * (2 ^ (n + 1) : ℤ) : ℚ) + ((n + 1) * (n + 4) : ℚ) / 2 + 3 := by simp only [A104747.P7849291554087070091.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A104747, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
