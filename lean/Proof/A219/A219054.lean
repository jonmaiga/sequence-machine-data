import Prog.A219.A2190
import Proof.Lib.Integral

/-- A219054: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A219054.anchor (n : ℕ) :
    (A219054 (n + 1) : ℚ) = (8 * (n + 1) ^ 3 + 3 * (n + 1) ^ 2 + (n + 1) : ℚ) / 6 := by
  have hr : ∀ m, A219054.P275525365873203850.a (m + 4) = (4 : ℚ) * A219054.P275525365873203850.a (m + 3) + (-6 : ℚ) * A219054.P275525365873203850.a (m + 2) + (4 : ℚ) * A219054.P275525365873203850.a (m + 1) + (-1 : ℚ) * A219054.P275525365873203850.a m := by
    intro m
    simp only [A219054.P275525365873203850.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A219054.P275525365873203850.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A219054.P275525365873203850.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13, by norm_num [A219054.P275525365873203850.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨41, by norm_num [A219054.P275525365873203850.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨94, by norm_num [A219054.P275525365873203850.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -6 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A219054.P275525365873203850.a n = (8 * (n + 1) ^ 3 + 3 * (n + 1) ^ 2 + (n + 1) : ℚ) / 6 := by simp only [A219054.P275525365873203850.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A219054, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
