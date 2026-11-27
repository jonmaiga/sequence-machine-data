import Prog.A091.A0916
import Proof.Lib.Integral

/-- A091686: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A091686.anchor (n : ℕ) :
    (A091686 n : ℚ) = (0 ^ n : ℚ) + ((n : ℤ) - 9 : ℚ) / 9 * (1 - (10 ^ n : ℤ) : ℚ) := by
  have hr : ∀ m, A091686.P8169437394337413360.a (m + 5) = (22 : ℚ) * A091686.P8169437394337413360.a (m + 4) + (-141 : ℚ) * A091686.P8169437394337413360.a (m + 3) + (220 : ℚ) * A091686.P8169437394337413360.a (m + 2) + (-100 : ℚ) * A091686.P8169437394337413360.a (m + 1) := by
    intro m
    simp only [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A091686.P8169437394337413360.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨77, by norm_num [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨666, by norm_num [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5555, by norm_num [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨22 * z4 + -141 * z3 + 220 * z2 + -100 * z1, ?_⟩
        rw [hr, h4, h3, h2, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A091686.P8169437394337413360.a n = (0 ^ n : ℚ) + ((n : ℤ) - 9 : ℚ) / 9 * (1 - (10 ^ n : ℤ) : ℚ) := by simp only [A091686.P8169437394337413360.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A091686, hz, SequenceProof.roundAway_intCast]
