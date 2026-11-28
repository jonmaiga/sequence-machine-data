import Prog.A135.A1355
import Proof.Lib.Integral

/-- A135503: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A135503.anchor (n : ℕ) :
    (A135503 n : ℚ) = ((n : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 2 := by
  have hr : ∀ m, A135503.P8692192585046001.a (m + 4) = (4 : ℚ) * A135503.P8692192585046001.a (m + 3) + (-6 : ℚ) * A135503.P8692192585046001.a (m + 2) + (4 : ℚ) * A135503.P8692192585046001.a (m + 1) + (-1 : ℚ) * A135503.P8692192585046001.a m := by
    intro m
    simp only [A135503.P8692192585046001.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A135503.P8692192585046001.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A135503.P8692192585046001.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A135503.P8692192585046001.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A135503.P8692192585046001.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12, by norm_num [A135503.P8692192585046001.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A135503.P8692192585046001.a n = ((n : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 2 := by simp only [A135503.P8692192585046001.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A135503, hz, SequenceProof.roundAway_intCast]
