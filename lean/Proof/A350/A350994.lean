import Prog.A350.A3509
import Proof.Lib.Integral

/-- A350994: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A350994.anchor (n : ℕ) :
    (A350994 n : ℚ) = ((40 * 100 ^ n + 6 * 10 ^ n : ℤ) - 1 : ℚ) / 3 := by
  have hr : ∀ m, A350994.P9379722967904437462.a (m + 3) = (111 : ℚ) * A350994.P9379722967904437462.a (m + 2) + (-1110 : ℚ) * A350994.P9379722967904437462.a (m + 1) + (1000 : ℚ) * A350994.P9379722967904437462.a m := by
    intro m
    simp only [A350994.P9379722967904437462.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A350994.P9379722967904437462.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨15, by norm_num [A350994.P9379722967904437462.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1353, by norm_num [A350994.P9379722967904437462.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨133533, by norm_num [A350994.P9379722967904437462.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A350994.P9379722967904437462.a n = ((40 * 100 ^ n + 6 * 10 ^ n : ℤ) - 1 : ℚ) / 3 := by simp only [A350994.P9379722967904437462.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A350994, hz, SequenceProof.roundAway_intCast]
