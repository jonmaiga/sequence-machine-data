import Prog.A172.A1720
import Proof.Lib.Integral

/-- A172075: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A172075.anchor (n : ℕ) :
    (A172075 n : ℚ) = ((n * (n + 1) : ℤ) * ((9 * n ^ 2 : ℤ) - (n : ℤ) - 5) : ℚ) / 6 := by
  have hr : ∀ m, A172075.P17654659069368217073.a (m + 5) = (5 : ℚ) * A172075.P17654659069368217073.a (m + 4) + (-10 : ℚ) * A172075.P17654659069368217073.a (m + 3) + (10 : ℚ) * A172075.P17654659069368217073.a (m + 2) + (-5 : ℚ) * A172075.P17654659069368217073.a (m + 1) + (1 : ℚ) * A172075.P17654659069368217073.a m := by
    intro m
    simp only [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A172075.P17654659069368217073.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨29, by norm_num [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨146, by norm_num [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨450, by norm_num [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A172075.P17654659069368217073.a n = ((n * (n + 1) : ℤ) * ((9 * n ^ 2 : ℤ) - (n : ℤ) - 5) : ℚ) / 6 := by simp only [A172075.P17654659069368217073.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A172075, hz, SequenceProof.roundAway_intCast]
