import Prog.A176.A1762
import Proof.Lib.Integral

/-- A176222: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A176222.anchor (n : ℕ) :
    (A176222 (n + 3) : ℚ) = (((n + 3) ^ 2 : ℤ) - (3 * (n + 3) : ℤ) + 1 + (-1) ^ (n + 3) : ℚ) / 2 := by
  have hr : ∀ m, A176222.P15700237300973687178.a (m + 4) = (2 : ℚ) * A176222.P15700237300973687178.a (m + 3) + (-2 : ℚ) * A176222.P15700237300973687178.a (m + 1) + (1 : ℚ) * A176222.P15700237300973687178.a m := by
    intro m
    simp only [A176222.P15700237300973687178.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A176222.P15700237300973687178.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A176222.P15700237300973687178.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A176222.P15700237300973687178.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A176222.P15700237300973687178.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A176222.P15700237300973687178.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A176222.P15700237300973687178.a n = (((n + 3) ^ 2 : ℤ) - (3 * (n + 3) : ℤ) + 1 + (-1) ^ (n + 3) : ℚ) / 2 := by simp only [A176222.P15700237300973687178.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A176222, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
