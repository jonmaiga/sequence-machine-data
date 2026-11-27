import Prog.A180.A1808
import Proof.Lib.Integral

/-- A180846: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A180846.anchor (n : ℕ) :
    (A180846 n : ℚ) = ((81 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 79 := by
  have hr : ∀ m, A180846.P14736449293524579153.a (m + 2) = (83 : ℚ) * A180846.P14736449293524579153.a (m + 1) + (-162 : ℚ) * A180846.P14736449293524579153.a m := by
    intro m
    simp only [A180846.P14736449293524579153.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A180846.P14736449293524579153.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A180846.P14736449293524579153.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A180846.P14736449293524579153.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨83 * z1 + -162 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A180846.P14736449293524579153.a n = ((81 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 79 := by simp only [A180846.P14736449293524579153.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A180846, hz, SequenceProof.roundAway_intCast]
