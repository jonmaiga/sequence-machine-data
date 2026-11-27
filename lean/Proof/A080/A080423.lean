import Prog.A080.A0804
import Proof.Lib.Integral

/-- A080423: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A080423.anchor (n : ℕ) :
    (A080423 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 15) * 3 ^ n : ℚ) / 360 := by
  have hr : ∀ m, A080423.P6205342014238601835.a (m + 6) = (18 : ℚ) * A080423.P6205342014238601835.a (m + 5) + (-135 : ℚ) * A080423.P6205342014238601835.a (m + 4) + (540 : ℚ) * A080423.P6205342014238601835.a (m + 3) + (-1215 : ℚ) * A080423.P6205342014238601835.a (m + 2) + (1458 : ℚ) * A080423.P6205342014238601835.a (m + 1) + (-729 : ℚ) * A080423.P6205342014238601835.a m := by
    intro m
    simp only [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A080423.P6205342014238601835.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨153, by norm_num [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1134, by norm_num [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7182, by norm_num [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨40824, by norm_num [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨18 * z5 + -135 * z4 + 540 * z3 + -1215 * z2 + 1458 * z1 + -729 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A080423.P6205342014238601835.a n = ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 15) * 3 ^ n : ℚ) / 360 := by simp only [A080423.P6205342014238601835.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A080423, hz, SequenceProof.roundAway_intCast]
