import Prog.A241.A2415
import Proof.Lib.Integral

/-- A241527: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A241527.anchor (n : ℕ) :
    (A241527 n : ℚ) = (n ^ 3 : ℚ) + (3 ^ n + 1 : ℚ) / 2 := by
  have hr : ∀ m, A241527.P13518544590562293118.a (m + 5) = (7 : ℚ) * A241527.P13518544590562293118.a (m + 4) + (-18 : ℚ) * A241527.P13518544590562293118.a (m + 3) + (22 : ℚ) * A241527.P13518544590562293118.a (m + 2) + (-13 : ℚ) * A241527.P13518544590562293118.a (m + 1) + (3 : ℚ) * A241527.P13518544590562293118.a m := by
    intro m
    simp only [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A241527.P13518544590562293118.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13, by norm_num [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨41, by norm_num [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨105, by norm_num [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z4 + -18 * z3 + 22 * z2 + -13 * z1 + 3 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A241527.P13518544590562293118.a n = (n ^ 3 : ℚ) + (3 ^ n + 1 : ℚ) / 2 := by simp only [A241527.P13518544590562293118.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A241527, hz, SequenceProof.roundAway_intCast]
