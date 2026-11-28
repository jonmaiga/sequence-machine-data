import Prog.A103.A1031
import Proof.Lib.Integral

/-- A103196: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A103196.anchor (n : ℕ) :
    (A103196 n : ℚ) = (1 : ℚ) / 9 * ((2 ^ (n + 3) : ℤ) - (-1) ^ n * ((3 * n : ℤ) - 1) : ℚ) := by
  have hr : ∀ m, A103196.P9836427978482282560.a (m + 3) = (3 : ℚ) * A103196.P9836427978482282560.a (m + 1) + (2 : ℚ) * A103196.P9836427978482282560.a m := by
    intro m
    simp only [A103196.P9836427978482282560.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A103196.P9836427978482282560.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A103196.P9836427978482282560.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A103196.P9836427978482282560.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A103196.P9836427978482282560.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z1 + 2 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A103196.P9836427978482282560.a n = (1 : ℚ) / 9 * ((2 ^ (n + 3) : ℤ) - (-1) ^ n * ((3 * n : ℤ) - 1) : ℚ) := by simp only [A103196.P9836427978482282560.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A103196, hz, SequenceProof.roundAway_intCast]
