import Prog.A135.A1353
import Proof.Lib.Integral

/-- A135351: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A135351.anchor (n : ℕ) :
    (A135351 n : ℚ) = ((2 ^ n + 3 : ℤ) - 7 * (-1) ^ n + (3 * 0 ^ n : ℤ) : ℚ) / 6 := by
  have hr : ∀ m, A135351.P14522610851365047926.a (m + 4) = (2 : ℚ) * A135351.P14522610851365047926.a (m + 3) + (1 : ℚ) * A135351.P14522610851365047926.a (m + 2) + (-2 : ℚ) * A135351.P14522610851365047926.a (m + 1) := by
    intro m
    simp only [A135351.P14522610851365047926.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A135351.P14522610851365047926.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A135351.P14522610851365047926.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A135351.P14522610851365047926.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A135351.P14522610851365047926.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A135351.P14522610851365047926.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨2 * z3 + 1 * z2 + -2 * z1, ?_⟩
        rw [hr, h3, h2, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A135351.P14522610851365047926.a n = ((2 ^ n + 3 : ℤ) - 7 * (-1) ^ n + (3 * 0 ^ n : ℤ) : ℚ) / 6 := by simp only [A135351.P14522610851365047926.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A135351, hz, SequenceProof.roundAway_intCast]
