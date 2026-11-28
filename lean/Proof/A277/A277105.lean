import Prog.A277.A2771
import Proof.Lib.Integral

/-- A277105: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A277105.anchor (n : ℕ) :
    (A277105 (n + 1) : ℚ) = ((27 * 3 ^ (n + 1) : ℤ) - 63 : ℚ) / 2 := by
  have hr : ∀ m, A277105.P16381072133638769027.a (m + 2) = (4 : ℚ) * A277105.P16381072133638769027.a (m + 1) + (-3 : ℚ) * A277105.P16381072133638769027.a m := by
    intro m
    simp only [A277105.P16381072133638769027.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A277105.P16381072133638769027.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨9, by norm_num [A277105.P16381072133638769027.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨90, by norm_num [A277105.P16381072133638769027.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z1 + -3 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A277105.P16381072133638769027.a n = ((27 * 3 ^ (n + 1) : ℤ) - 63 : ℚ) / 2 := by simp only [A277105.P16381072133638769027.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A277105, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
