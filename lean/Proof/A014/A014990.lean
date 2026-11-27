import Prog.A014.A0149
import Proof.Lib.Integral

/-- A014990: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A014990.anchor (n : ℕ) :
    (A014990 (n + 1) : ℚ) = (1 - (-8) ^ (n + 1) : ℚ) / 9 := by
  have hr : ∀ m, A014990.P13013437655060514213.a (m + 2) = (-7 : ℚ) * A014990.P13013437655060514213.a (m + 1) + (8 : ℚ) * A014990.P13013437655060514213.a m := by
    intro m
    simp only [A014990.P13013437655060514213.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A014990.P13013437655060514213.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A014990.P13013437655060514213.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-7, by norm_num [A014990.P13013437655060514213.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-7 * z1 + 8 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A014990.P13013437655060514213.a n = (1 - (-8) ^ (n + 1) : ℚ) / 9 := by simp only [A014990.P13013437655060514213.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A014990, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
