import Prog.A121.A1215
import Proof.Lib.Integral

/-- A121509: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A121509.anchor (n : ℕ) :
    (A121509 (n + 1) : ℚ) = (5 * (n + 1) ^ 2 : ℚ) / 2 - (5 * (n + 1) : ℚ) + (13 : ℚ) / 4 - ((-1) ^ (n + 1) : ℚ) / 4 := by
  have hr : ∀ m, A121509.P3223191623095342533.a (m + 4) = (2 : ℚ) * A121509.P3223191623095342533.a (m + 3) + (-2 : ℚ) * A121509.P3223191623095342533.a (m + 1) + (1 : ℚ) * A121509.P3223191623095342533.a m := by
    intro m
    simp only [A121509.P3223191623095342533.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A121509.P3223191623095342533.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A121509.P3223191623095342533.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A121509.P3223191623095342533.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨11, by norm_num [A121509.P3223191623095342533.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨23, by norm_num [A121509.P3223191623095342533.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A121509.P3223191623095342533.a n = (5 * (n + 1) ^ 2 : ℚ) / 2 - (5 * (n + 1) : ℚ) + (13 : ℚ) / 4 - ((-1) ^ (n + 1) : ℚ) / 4 := by simp only [A121509.P3223191623095342533.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A121509, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
