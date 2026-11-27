import Prog.A256.A2568
import Proof.Lib.Integral

/-- A256857: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A256857.anchor (n : ℕ) :
    (A256857 n : ℚ) = ((n : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 2) : ℚ) / 2 := by
  have hr : ∀ m, A256857.P16106581871430100185.a (m + 4) = (4 : ℚ) * A256857.P16106581871430100185.a (m + 3) + (-6 : ℚ) * A256857.P16106581871430100185.a (m + 2) + (4 : ℚ) * A256857.P16106581871430100185.a (m + 1) + (-1 : ℚ) * A256857.P16106581871430100185.a m := by
    intro m
    simp only [A256857.P16106581871430100185.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A256857.P16106581871430100185.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A256857.P16106581871430100185.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A256857.P16106581871430100185.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A256857.P16106581871430100185.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨24, by norm_num [A256857.P16106581871430100185.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A256857.P16106581871430100185.a n = ((n : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 2) : ℚ) / 2 := by simp only [A256857.P16106581871430100185.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A256857, hz, SequenceProof.roundAway_intCast]
