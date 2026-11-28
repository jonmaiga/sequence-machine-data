import Prog.A238.A2385
import Proof.Lib.Integral

/-- A238540: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A238540.anchor (n : ℕ) :
    (A238540 (n + 1) : ℚ) = ((3 ^ (n + 1) + 1 : ℤ) * ((3 ^ (3 * (n + 1)) : ℤ) - 1) : ℚ) / ((3 + 1 : ℤ) * ((3 ^ 3 : ℤ) - 1) : ℚ) := by
  have hr : ∀ m, A238540.P12723011581420749487.a (m + 4) = (112 : ℚ) * A238540.P12723011581420749487.a (m + 3) + (-2622 : ℚ) * A238540.P12723011581420749487.a (m + 2) + (9072 : ℚ) * A238540.P12723011581420749487.a (m + 1) + (-6561 : ℚ) * A238540.P12723011581420749487.a m := by
    intro m
    simp only [A238540.P12723011581420749487.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A238540.P12723011581420749487.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A238540.P12723011581420749487.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨70, by norm_num [A238540.P12723011581420749487.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5299, by norm_num [A238540.P12723011581420749487.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨419020, by norm_num [A238540.P12723011581420749487.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨112 * z3 + -2622 * z2 + 9072 * z1 + -6561 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A238540.P12723011581420749487.a n = ((3 ^ (n + 1) + 1 : ℤ) * ((3 ^ (3 * (n + 1)) : ℤ) - 1) : ℚ) / ((3 + 1 : ℤ) * ((3 ^ 3 : ℤ) - 1) : ℚ) := by simp only [A238540.P12723011581420749487.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A238540, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
