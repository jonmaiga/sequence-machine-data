import Prog.A245.A2459
import Proof.Lib.Integral

/-- A245941: the name formula, an integer: it satisfies a linear recurrence of order 7 with integer coefficients. -/
theorem A245941.anchor (n : ℕ) :
    (A245941 n : ℚ) = ((16 * n ^ 6 : ℤ) - (24 * n ^ 5 : ℤ) + (2 * n ^ 4 : ℤ) + (11 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (n : ℤ) : ℚ) / 6 := by
  have hr : ∀ m, A245941.P5783671091457674196.a (m + 7) = (7 : ℚ) * A245941.P5783671091457674196.a (m + 6) + (-21 : ℚ) * A245941.P5783671091457674196.a (m + 5) + (35 : ℚ) * A245941.P5783671091457674196.a (m + 4) + (-35 : ℚ) * A245941.P5783671091457674196.a (m + 3) + (21 : ℚ) * A245941.P5783671091457674196.a (m + 2) + (-7 : ℚ) * A245941.P5783671091457674196.a (m + 1) + (1 : ℚ) * A245941.P5783671091457674196.a m := by
    intro m
    simp only [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A245941.P5783671091457674196.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 7 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨59, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1040, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7014, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨29580, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨94105, by norm_num [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z6 + -21 * z5 + 35 * z4 + -35 * z3 + 21 * z2 + -7 * z1 + 1 * z0, ?_⟩
        rw [hr, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A245941.P5783671091457674196.a n = ((16 * n ^ 6 : ℤ) - (24 * n ^ 5 : ℤ) + (2 * n ^ 4 : ℤ) + (11 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (n : ℤ) : ℚ) / 6 := by simp only [A245941.P5783671091457674196.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A245941, hz, SequenceProof.roundAway_intCast]
