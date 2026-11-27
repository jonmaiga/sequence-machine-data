import Prog.A394.A3948
import Proof.Lib.Integral

/-- A394883: the name formula, an integer: it satisfies a linear recurrence of order 8 with integer coefficients. -/
theorem A394883.anchor (n : ℕ) :
    (A394883 (n + 1) : ℚ) = (((n + 1) ^ 2 * (n + 2) * (n + 3) * (2 * (n + 1) + 1) * (2 * (n + 1) + 3) : ℤ) * ((5 * (n + 1) : ℤ) - 1) : ℚ) / 360 := by
  have hr : ∀ m, A394883.P10124739734711994868.a (m + 8) = (8 : ℚ) * A394883.P10124739734711994868.a (m + 7) + (-28 : ℚ) * A394883.P10124739734711994868.a (m + 6) + (56 : ℚ) * A394883.P10124739734711994868.a (m + 5) + (-70 : ℚ) * A394883.P10124739734711994868.a (m + 4) + (56 : ℚ) * A394883.P10124739734711994868.a (m + 3) + (-28 : ℚ) * A394883.P10124739734711994868.a (m + 2) + (8 : ℚ) * A394883.P10124739734711994868.a (m + 1) + (-1 : ℚ) * A394883.P10124739734711994868.a m := by
    intro m
    simp only [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A394883.P10124739734711994868.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 8 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨42, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨441, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2508, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10010, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨31668, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨84966, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨201552, by norm_num [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z7, h7⟩ := ih (m + 7) (by omega)
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨8 * z7 + -28 * z6 + 56 * z5 + -70 * z4 + 56 * z3 + -28 * z2 + 8 * z1 + -1 * z0, ?_⟩
        rw [hr, h7, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A394883.P10124739734711994868.a n = (((n + 1) ^ 2 * (n + 2) * (n + 3) * (2 * (n + 1) + 1) * (2 * (n + 1) + 3) : ℤ) * ((5 * (n + 1) : ℤ) - 1) : ℚ) / 360 := by simp only [A394883.P10124739734711994868.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A394883, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
