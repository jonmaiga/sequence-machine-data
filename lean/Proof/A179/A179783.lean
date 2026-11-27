import Prog.A179.A1797
import Proof.Lib.Integral

/-- A179783: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A179783.anchor (n : ℕ) :
    (A179783 n : ℚ) = (2 * n * (n + 1) * (n + 2) : ℚ) / 3 + ((-1) ^ n : ℚ) := by
  have hr : ∀ m, A179783.P10045782264614118652.a (m + 5) = (3 : ℚ) * A179783.P10045782264614118652.a (m + 4) + (-2 : ℚ) * A179783.P10045782264614118652.a (m + 3) + (-2 : ℚ) * A179783.P10045782264614118652.a (m + 2) + (3 : ℚ) * A179783.P10045782264614118652.a (m + 1) + (-1 : ℚ) * A179783.P10045782264614118652.a m := by
    intro m
    simp only [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A179783.P10045782264614118652.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨17, by norm_num [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨39, by norm_num [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨81, by norm_num [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z4 + -2 * z3 + -2 * z2 + 3 * z1 + -1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A179783.P10045782264614118652.a n = (2 * n * (n + 1) * (n + 2) : ℚ) / 3 + ((-1) ^ n : ℚ) := by simp only [A179783.P10045782264614118652.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A179783, hz, SequenceProof.roundAway_intCast]
