import Prog.A003.A0038
import Proof.Lib.Integral

/-- A003878: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A003878.anchor (n : ℕ) :
    (A003878 n : ℚ) = (n ^ 4 : ℚ) + (9 : ℚ) / 2 * (n ^ 3 : ℚ) + (n ^ 2 : ℚ) - (9 : ℚ) / 2 * (n : ℚ) + 1 := by
  have hr : ∀ m, A003878.P12870704089211864058.a (m + 5) = (5 : ℚ) * A003878.P12870704089211864058.a (m + 4) + (-10 : ℚ) * A003878.P12870704089211864058.a (m + 3) + (10 : ℚ) * A003878.P12870704089211864058.a (m + 2) + (-5 : ℚ) * A003878.P12870704089211864058.a (m + 1) + (1 : ℚ) * A003878.P12870704089211864058.a m := by
    intro m
    simp only [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A003878.P12870704089211864058.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨48, by norm_num [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨199, by norm_num [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨543, by norm_num [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A003878.P12870704089211864058.a n = (n ^ 4 : ℚ) + (9 : ℚ) / 2 * (n ^ 3 : ℚ) + (n ^ 2 : ℚ) - (9 : ℚ) / 2 * (n : ℚ) + 1 := by simp only [A003878.P12870704089211864058.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A003878, hz, SequenceProof.roundAway_intCast]
