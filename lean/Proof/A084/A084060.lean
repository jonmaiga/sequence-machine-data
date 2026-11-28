import Prog.A084.A0840
import Proof.Lib.Integral

/-- A084060: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A084060.anchor (n : ℕ) :
    (A084060 n : ℚ) = (1 : ℚ) / 2 + ((1 - (6 * n : ℤ)) * (-1) ^ n : ℚ) / 2 := by
  have hr : ∀ m, A084060.P5570060539211486503.a (m + 3) = (-1 : ℚ) * A084060.P5570060539211486503.a (m + 2) + (1 : ℚ) * A084060.P5570060539211486503.a (m + 1) + (1 : ℚ) * A084060.P5570060539211486503.a m := by
    intro m
    simp only [A084060.P5570060539211486503.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A084060.P5570060539211486503.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A084060.P5570060539211486503.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A084060.P5570060539211486503.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-5, by norm_num [A084060.P5570060539211486503.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-1 * z2 + 1 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A084060.P5570060539211486503.a n = (1 : ℚ) / 2 + ((1 - (6 * n : ℤ)) * (-1) ^ n : ℚ) / 2 := by simp only [A084060.P5570060539211486503.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A084060, hz, SequenceProof.roundAway_intCast]
