import Prog.A270.A2708
import Proof.Lib.Integral

/-- A270809: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A270809.anchor (n : ℕ) :
    (A270809 n : ℚ) = (n ^ 3 : ℚ) / 3 - (7 * n : ℚ) / 3 + 4 := by
  have hr : ∀ m, A270809.P8978152464662253856.a (m + 4) = (4 : ℚ) * A270809.P8978152464662253856.a (m + 3) + (-6 : ℚ) * A270809.P8978152464662253856.a (m + 2) + (4 : ℚ) * A270809.P8978152464662253856.a (m + 1) + (-1 : ℚ) * A270809.P8978152464662253856.a m := by
    intro m
    simp only [A270809.P8978152464662253856.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A270809.P8978152464662253856.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨4, by norm_num [A270809.P8978152464662253856.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A270809.P8978152464662253856.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A270809.P8978152464662253856.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A270809.P8978152464662253856.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A270809.P8978152464662253856.a n = (n ^ 3 : ℚ) / 3 - (7 * n : ℚ) / 3 + 4 := by simp only [A270809.P8978152464662253856.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A270809, hz, SequenceProof.roundAway_intCast]
