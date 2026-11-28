import Prog.A182.A1823
import Proof.Lib.Integral

/-- A182323: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A182323.anchor (n : ℕ) :
    (A182323 n : ℚ) = ((194 * n : ℤ) + 3 * (-1) ^ n + 1 : ℚ) / 4 + 24 := by
  have hr : ∀ m, A182323.P501958721353626101.a (m + 3) = (1 : ℚ) * A182323.P501958721353626101.a (m + 2) + (1 : ℚ) * A182323.P501958721353626101.a (m + 1) + (-1 : ℚ) * A182323.P501958721353626101.a m := by
    intro m
    simp only [A182323.P501958721353626101.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A182323.P501958721353626101.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨25, by norm_num [A182323.P501958721353626101.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨72, by norm_num [A182323.P501958721353626101.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨122, by norm_num [A182323.P501958721353626101.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z2 + 1 * z1 + -1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A182323.P501958721353626101.a n = ((194 * n : ℤ) + 3 * (-1) ^ n + 1 : ℚ) / 4 + 24 := by simp only [A182323.P501958721353626101.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A182323, hz, SequenceProof.roundAway_intCast]
