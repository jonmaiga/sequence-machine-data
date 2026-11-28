import Prog.A108.A1086
import Proof.Lib.Integral

/-- A108642: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A108642.anchor (n : ℕ) :
    (A108642 n : ℚ) = (72 - (258 * n : ℤ) + (601 * n ^ 2 : ℤ) - (264 * n ^ 3 : ℤ) + (33 * n ^ 4 : ℤ) : ℚ) / 4 := by
  have hr : ∀ m, A108642.P9899907613286408366.a (m + 5) = (5 : ℚ) * A108642.P9899907613286408366.a (m + 4) + (-10 : ℚ) * A108642.P9899907613286408366.a (m + 3) + (10 : ℚ) * A108642.P9899907613286408366.a (m + 2) + (-5 : ℚ) * A108642.P9899907613286408366.a (m + 1) + (1 : ℚ) * A108642.P9899907613286408366.a m := by
    intro m
    simp only [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A108642.P9899907613286408366.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨18, by norm_num [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨46, by norm_num [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨94, by norm_num [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨63, by norm_num [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨52, by norm_num [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A108642.P9899907613286408366.a n = (72 - (258 * n : ℤ) + (601 * n ^ 2 : ℤ) - (264 * n ^ 3 : ℤ) + (33 * n ^ 4 : ℤ) : ℚ) / 4 := by simp only [A108642.P9899907613286408366.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A108642, hz, SequenceProof.roundAway_intCast]
