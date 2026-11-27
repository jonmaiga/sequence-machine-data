import Prog.A071.A0712
import Proof.Lib.Integral

/-- A071229: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A071229.anchor (n : ℕ) :
    (A071229 n : ℚ) = ((n : ℤ) * ((14 * n ^ 2 : ℤ) - (21 * n : ℤ) + 13) : ℚ) / 6 := by
  have hr : ∀ m, A071229.P16763660215598241205.a (m + 4) = (4 : ℚ) * A071229.P16763660215598241205.a (m + 3) + (-6 : ℚ) * A071229.P16763660215598241205.a (m + 2) + (4 : ℚ) * A071229.P16763660215598241205.a (m + 1) + (-1 : ℚ) * A071229.P16763660215598241205.a m := by
    intro m
    simp only [A071229.P16763660215598241205.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A071229.P16763660215598241205.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A071229.P16763660215598241205.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A071229.P16763660215598241205.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A071229.P16763660215598241205.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨38, by norm_num [A071229.P16763660215598241205.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A071229.P16763660215598241205.a n = ((n : ℤ) * ((14 * n ^ 2 : ℤ) - (21 * n : ℤ) + 13) : ℚ) / 6 := by simp only [A071229.P16763660215598241205.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A071229, hz, SequenceProof.roundAway_intCast]
