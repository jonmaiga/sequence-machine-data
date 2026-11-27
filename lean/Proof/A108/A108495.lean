import Prog.A108.A1084
import Proof.Lib.Integral

/-- A108495: the name formula, an integer: it satisfies a linear recurrence of order 8 with integer coefficients. -/
theorem A108495.anchor (n : ℕ) :
    (A108495 n : ℚ) = ((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 6 := by
  have hr : ∀ m, A108495.P13919376169891115763.a (m + 8) = (8 : ℚ) * A108495.P13919376169891115763.a (m + 7) + (-28 : ℚ) * A108495.P13919376169891115763.a (m + 6) + (56 : ℚ) * A108495.P13919376169891115763.a (m + 5) + (-70 : ℚ) * A108495.P13919376169891115763.a (m + 4) + (56 : ℚ) * A108495.P13919376169891115763.a (m + 3) + (-28 : ℚ) * A108495.P13919376169891115763.a (m + 2) + (8 : ℚ) * A108495.P13919376169891115763.a (m + 1) + (-1 : ℚ) * A108495.P13919376169891115763.a m := by
    intro m
    simp only [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A108495.P13919376169891115763.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 8 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨21, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨364, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2730, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13020, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨46655, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨137256, by norm_num [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A108495.P13919376169891115763.a n = ((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 6 := by simp only [A108495.P13919376169891115763.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A108495, hz, SequenceProof.roundAway_intCast]
