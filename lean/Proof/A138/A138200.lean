import Prog.A138.A1382
import Proof.Lib.Integral

/-- A138200: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A138200.anchor (n : ℕ) :
    (A138200 n : ℚ) = (14 ^ (2 * n + 1) + 3 ^ (2 * n + 1) : ℚ) / 17 := by
  have hr : ∀ m, A138200.P17649471565326741356.a (m + 2) = (205 : ℚ) * A138200.P17649471565326741356.a (m + 1) + (-1764 : ℚ) * A138200.P17649471565326741356.a m := by
    intro m
    simp only [A138200.P17649471565326741356.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A138200.P17649471565326741356.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A138200.P17649471565326741356.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨163, by norm_num [A138200.P17649471565326741356.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨205 * z1 + -1764 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A138200.P17649471565326741356.a n = (14 ^ (2 * n + 1) + 3 ^ (2 * n + 1) : ℚ) / 17 := by simp only [A138200.P17649471565326741356.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A138200, hz, SequenceProof.roundAway_intCast]
