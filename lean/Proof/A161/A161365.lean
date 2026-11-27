import Prog.A161.A1613
import Proof.Lib.Integral

/-- A161365: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A161365.anchor (n : ℕ) :
    (A161365 (n + 1) : ℚ) = (3 : ℚ) / 2 + (5 * (n + 1) : ℚ) - (5 * (-1) ^ (n + 1) : ℚ) / 2 := by
  have hr : ∀ m, A161365.P15802152037611233402.a (m + 3) = (1 : ℚ) * A161365.P15802152037611233402.a (m + 2) + (1 : ℚ) * A161365.P15802152037611233402.a (m + 1) + (-1 : ℚ) * A161365.P15802152037611233402.a m := by
    intro m
    simp only [A161365.P15802152037611233402.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A161365.P15802152037611233402.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨9, by norm_num [A161365.P15802152037611233402.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A161365.P15802152037611233402.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨19, by norm_num [A161365.P15802152037611233402.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z2 + 1 * z1 + -1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A161365.P15802152037611233402.a n = (3 : ℚ) / 2 + (5 * (n + 1) : ℚ) - (5 * (-1) ^ (n + 1) : ℚ) / 2 := by simp only [A161365.P15802152037611233402.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A161365, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
