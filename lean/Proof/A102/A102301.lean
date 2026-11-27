import Prog.A102.A1023
import Proof.Lib.Integral

/-- A102301: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A102301.anchor (n : ℕ) :
    (A102301 n : ℚ) = (((3 * n + 1) * 2 ^ (n + 3) + 9 : ℤ) + (-1) ^ n : ℚ) / 18 := by
  have hr : ∀ m, A102301.P15247399249013565002.a (m + 4) = (4 : ℚ) * A102301.P15247399249013565002.a (m + 3) + (-3 : ℚ) * A102301.P15247399249013565002.a (m + 2) + (-4 : ℚ) * A102301.P15247399249013565002.a (m + 1) + (4 : ℚ) * A102301.P15247399249013565002.a m := by
    intro m
    simp only [A102301.P15247399249013565002.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A102301.P15247399249013565002.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A102301.P15247399249013565002.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A102301.P15247399249013565002.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13, by norm_num [A102301.P15247399249013565002.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨36, by norm_num [A102301.P15247399249013565002.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -3 * z2 + -4 * z1 + 4 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A102301.P15247399249013565002.a n = (((3 * n + 1) * 2 ^ (n + 3) + 9 : ℤ) + (-1) ^ n : ℚ) / 18 := by simp only [A102301.P15247399249013565002.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A102301, hz, SequenceProof.roundAway_intCast]
