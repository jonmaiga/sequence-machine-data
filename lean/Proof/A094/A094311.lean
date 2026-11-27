import Prog.A094.A0943
import Proof.Lib.Integral

/-- A094311: the name formula, an integer: it satisfies a linear recurrence of order 8 with integer coefficients. -/
theorem A094311.anchor (n : ℕ) :
    (A094311 (n + 1) : ℚ) = (((n + 1) * (1 + (n + 1) ^ 2) : ℤ) * (((2 + (n + 1) ^ 2) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)) : ℚ) / 16 := by
  have hr : ∀ m, A094311.P4846692502652945548.a (m + 8) = (8 : ℚ) * A094311.P4846692502652945548.a (m + 7) + (-28 : ℚ) * A094311.P4846692502652945548.a (m + 6) + (56 : ℚ) * A094311.P4846692502652945548.a (m + 5) + (-70 : ℚ) * A094311.P4846692502652945548.a (m + 4) + (56 : ℚ) * A094311.P4846692502652945548.a (m + 3) + (-28 : ℚ) * A094311.P4846692502652945548.a (m + 2) + (8 : ℚ) * A094311.P4846692502652945548.a (m + 1) + (-1 : ℚ) * A094311.P4846692502652945548.a m := by
    intro m
    simp only [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A094311.P4846692502652945548.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 8 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨20, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨210, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1309, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5720, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨19536, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨55825, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨139490, by norm_num [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A094311.P4846692502652945548.a n = (((n + 1) * (1 + (n + 1) ^ 2) : ℤ) * (((2 + (n + 1) ^ 2) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)) : ℚ) / 16 := by simp only [A094311.P4846692502652945548.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A094311, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
