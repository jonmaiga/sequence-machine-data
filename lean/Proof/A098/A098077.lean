import Prog.A098.A0980
import Proof.Lib.Integral

/-- A098077: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A098077.anchor (n : ℕ) :
    (A098077 (n + 1) : ℚ) = ((n + 1) ^ 2 * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 3 := by
  have hr : ∀ m, A098077.P12747471525708270359.a (m + 5) = (5 : ℚ) * A098077.P12747471525708270359.a (m + 4) + (-10 : ℚ) * A098077.P12747471525708270359.a (m + 3) + (10 : ℚ) * A098077.P12747471525708270359.a (m + 2) + (-5 : ℚ) * A098077.P12747471525708270359.a (m + 1) + (1 : ℚ) * A098077.P12747471525708270359.a m := by
    intro m
    simp only [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A098077.P12747471525708270359.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨20, by norm_num [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨84, by norm_num [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨240, by norm_num [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨550, by norm_num [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z4 + -10 * z3 + 10 * z2 + -5 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A098077.P12747471525708270359.a n = ((n + 1) ^ 2 * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 3 := by simp only [A098077.P12747471525708270359.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A098077, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
