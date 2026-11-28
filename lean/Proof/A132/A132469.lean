import Prog.A132.A1324
import Proof.Lib.Integral

/-- A132469: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A132469.anchor (n : ℕ) :
    (A132469 n : ℚ) = ((2 ^ (5 * n) : ℤ) - 1 : ℚ) / 31 := by
  have hr : ∀ m, A132469.P2760089563841197780.a (m + 2) = (33 : ℚ) * A132469.P2760089563841197780.a (m + 1) + (-32 : ℚ) * A132469.P2760089563841197780.a m := by
    intro m
    simp only [A132469.P2760089563841197780.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A132469.P2760089563841197780.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A132469.P2760089563841197780.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A132469.P2760089563841197780.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨33 * z1 + -32 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A132469.P2760089563841197780.a n = ((2 ^ (5 * n) : ℤ) - 1 : ℚ) / 31 := by simp only [A132469.P2760089563841197780.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A132469, hz, SequenceProof.roundAway_intCast]
