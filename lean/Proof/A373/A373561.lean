import Prog.A373.A3735
import Proof.Lib.Integral

/-- A373561: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A373561.anchor (n : ℕ) :
    (A373561 n : ℚ) = (1 : ℚ) / 3 * (n ^ 5 : ℚ) + (1 : ℚ) / 2 * (n ^ 4 : ℚ) + (1 : ℚ) / 6 * (n ^ 3 : ℚ) := by
  have hr : ∀ m, A373561.P13928186945616556249.a (m + 6) = (6 : ℚ) * A373561.P13928186945616556249.a (m + 5) + (-15 : ℚ) * A373561.P13928186945616556249.a (m + 4) + (20 : ℚ) * A373561.P13928186945616556249.a (m + 3) + (-15 : ℚ) * A373561.P13928186945616556249.a (m + 2) + (6 : ℚ) * A373561.P13928186945616556249.a (m + 1) + (-1 : ℚ) * A373561.P13928186945616556249.a m := by
    intro m
    simp only [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A373561.P13928186945616556249.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨20, by norm_num [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨126, by norm_num [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨480, by norm_num [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1375, by norm_num [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A373561.P13928186945616556249.a n = (1 : ℚ) / 3 * (n ^ 5 : ℚ) + (1 : ℚ) / 2 * (n ^ 4 : ℚ) + (1 : ℚ) / 6 * (n ^ 3 : ℚ) := by simp only [A373561.P13928186945616556249.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A373561, hz, SequenceProof.roundAway_intCast]
