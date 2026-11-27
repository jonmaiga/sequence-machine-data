import Prog.A083.A0830
import Proof.Lib.Integral

/-- A083085: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083085.anchor (n : ℕ) :
    (A083085 n : ℚ) = (2 + (-5) ^ n : ℚ) / 3 := by
  have hr : ∀ m, A083085.P3111361591782293866.a (m + 2) = (-4 : ℚ) * A083085.P3111361591782293866.a (m + 1) + (5 : ℚ) * A083085.P3111361591782293866.a m := by
    intro m
    simp only [A083085.P3111361591782293866.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083085.P3111361591782293866.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083085.P3111361591782293866.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-1, by norm_num [A083085.P3111361591782293866.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-4 * z1 + 5 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083085.P3111361591782293866.a n = (2 + (-5) ^ n : ℚ) / 3 := by simp only [A083085.P3111361591782293866.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083085, hz, SequenceProof.roundAway_intCast]
