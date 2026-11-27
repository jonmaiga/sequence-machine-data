import Prog.A088.A0887
import Proof.Lib.Integral

/-- A088795: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A088795.anchor (n : ℕ) :
    (A088795 (n + 1) : ℚ) = (-1 : ℚ) / 16 - (3 * (n + 1) ^ 2 : ℚ) / 8 + (17 * (n + 1) : ℚ) / 12 + ((n + 1) ^ 3 : ℚ) / 12 + ((-1) ^ (n + 1) : ℚ) / 16 := by
  have hr : ∀ m, A088795.P11935350373283970460.a (m + 5) = (3 : ℚ) * A088795.P11935350373283970460.a (m + 4) + (-2 : ℚ) * A088795.P11935350373283970460.a (m + 3) + (-2 : ℚ) * A088795.P11935350373283970460.a (m + 2) + (3 : ℚ) * A088795.P11935350373283970460.a (m + 1) + (-1 : ℚ) * A088795.P11935350373283970460.a m := by
    intro m
    simp only [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A088795.P11935350373283970460.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z4 + -2 * z3 + -2 * z2 + 3 * z1 + -1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A088795.P11935350373283970460.a n = (-1 : ℚ) / 16 - (3 * (n + 1) ^ 2 : ℚ) / 8 + (17 * (n + 1) : ℚ) / 12 + ((n + 1) ^ 3 : ℚ) / 12 + ((-1) ^ (n + 1) : ℚ) / 16 := by simp only [A088795.P11935350373283970460.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A088795, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
