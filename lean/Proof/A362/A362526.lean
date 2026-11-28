import Prog.A362.A3625
import Proof.Lib.Integral

/-- A362526: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A362526.anchor (n : ℕ) :
    (A362526 (n + 1) : ℚ) = (2 ^ (n + 1) * (n + 3) : ℚ) + (((n : ℤ) - 6) * (n + 1 : ℤ) : ℚ) / 2 - 2 := by
  have hr : ∀ m, A362526.P16300002904822244468.a (m + 5) = (7 : ℚ) * A362526.P16300002904822244468.a (m + 4) + (-19 : ℚ) * A362526.P16300002904822244468.a (m + 3) + (25 : ℚ) * A362526.P16300002904822244468.a (m + 2) + (-16 : ℚ) * A362526.P16300002904822244468.a (m + 1) + (4 : ℚ) * A362526.P16300002904822244468.a m := by
    intro m
    simp only [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A362526.P16300002904822244468.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨32, by norm_num [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨88, by norm_num [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨217, by norm_num [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z4 + -19 * z3 + 25 * z2 + -16 * z1 + 4 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A362526.P16300002904822244468.a n = (2 ^ (n + 1) * (n + 3) : ℚ) + (((n : ℤ) - 6) * (n + 1 : ℤ) : ℚ) / 2 - 2 := by simp only [A362526.P16300002904822244468.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A362526, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
