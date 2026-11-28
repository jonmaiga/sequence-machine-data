import Prog.A144.A1448
import Proof.Lib.Integral

/-- A144843: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A144843.anchor (n : ℕ) :
    (A144843 (n + 1) : ℚ) = (((6 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)) ^ 2 : ℚ) / 16 := by
  have hr : ∀ m, A144843.P18370248249592332351.a (m + 3) = (52 : ℚ) * A144843.P18370248249592332351.a (m + 2) + (-624 : ℚ) * A144843.P18370248249592332351.a (m + 1) + (1728 : ℚ) * A144843.P18370248249592332351.a m := by
    intro m
    simp only [A144843.P18370248249592332351.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A144843.P18370248249592332351.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A144843.P18370248249592332351.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨64, by norm_num [A144843.P18370248249592332351.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2704, by norm_num [A144843.P18370248249592332351.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨52 * z2 + -624 * z1 + 1728 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A144843.P18370248249592332351.a n = (((6 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)) ^ 2 : ℚ) / 16 := by simp only [A144843.P18370248249592332351.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A144843, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
