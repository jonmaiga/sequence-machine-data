import Prog.A014.A0149
import Proof.Lib.Integral

/-- A014986: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A014986.anchor (n : ℕ) :
    (A014986 (n + 1) : ℚ) = (1 - (-5) ^ (n + 1) : ℚ) / 6 := by
  have hr : ∀ m, A014986.P14612529213181998698.a (m + 2) = (-4 : ℚ) * A014986.P14612529213181998698.a (m + 1) + (5 : ℚ) * A014986.P14612529213181998698.a m := by
    intro m
    simp only [A014986.P14612529213181998698.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A014986.P14612529213181998698.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A014986.P14612529213181998698.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-4, by norm_num [A014986.P14612529213181998698.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-4 * z1 + 5 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A014986.P14612529213181998698.a n = (1 - (-5) ^ (n + 1) : ℚ) / 6 := by simp only [A014986.P14612529213181998698.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A014986, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
