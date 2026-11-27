import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083224: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083224.anchor (n : ℕ) :
    (A083224 n : ℚ) = ((6 * 7 ^ n : ℤ) + (-7) ^ n : ℚ) / 7 := by
  have hr : ∀ m, A083224.P16572519125724174741.a (m + 2) = (49 : ℚ) * A083224.P16572519125724174741.a m := by
    intro m
    simp only [A083224.P16572519125724174741.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083224.P16572519125724174741.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083224.P16572519125724174741.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A083224.P16572519125724174741.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨49 * z0, ?_⟩
        rw [hr, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083224.P16572519125724174741.a n = ((6 * 7 ^ n : ℤ) + (-7) ^ n : ℚ) / 7 := by simp only [A083224.P16572519125724174741.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083224, hz, SequenceProof.roundAway_intCast]
