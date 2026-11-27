import Prog.A168.A1685
import Proof.Lib.Integral

/-- A168547: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A168547.anchor (n : ℕ) :
    (A168547 n : ℚ) = (1 - (2 * n ^ 2 : ℤ) : ℚ) + (4 * n * (1 + 2 * n ^ 2) : ℚ) / 3 := by
  have hr : ∀ m, A168547.P17009202902646791344.a (m + 4) = (4 : ℚ) * A168547.P17009202902646791344.a (m + 3) + (-6 : ℚ) * A168547.P17009202902646791344.a (m + 2) + (4 : ℚ) * A168547.P17009202902646791344.a (m + 1) + (-1 : ℚ) * A168547.P17009202902646791344.a m := by
    intro m
    simp only [A168547.P17009202902646791344.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A168547.P17009202902646791344.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A168547.P17009202902646791344.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A168547.P17009202902646791344.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨17, by norm_num [A168547.P17009202902646791344.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨59, by norm_num [A168547.P17009202902646791344.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -6 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A168547.P17009202902646791344.a n = (1 - (2 * n ^ 2 : ℤ) : ℚ) + (4 * n * (1 + 2 * n ^ 2) : ℚ) / 3 := by simp only [A168547.P17009202902646791344.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A168547, hz, SequenceProof.roundAway_intCast]
