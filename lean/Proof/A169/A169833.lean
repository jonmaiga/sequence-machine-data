import Prog.A169.A1698
import Proof.Lib.Integral

/-- A169833: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A169833.anchor (n : ℕ) :
    (A169833 n : ℚ) = (25 * 2 ^ (n + 3) : ℚ) - (198 + (392 * n : ℚ) / 3 + (36 * n ^ 2 : ℚ) + (10 * n ^ 3 : ℚ) / 3) := by
  have hr : ∀ m, A169833.P12576482676920839500.a (m + 5) = (6 : ℚ) * A169833.P12576482676920839500.a (m + 4) + (-14 : ℚ) * A169833.P12576482676920839500.a (m + 3) + (16 : ℚ) * A169833.P12576482676920839500.a (m + 2) + (-9 : ℚ) * A169833.P12576482676920839500.a (m + 1) + (2 : ℚ) * A169833.P12576482676920839500.a m := by
    intro m
    simp only [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A169833.P12576482676920839500.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨32, by norm_num [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨170, by norm_num [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨596, by norm_num [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1690, by norm_num [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z4 + -14 * z3 + 16 * z2 + -9 * z1 + 2 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A169833.P12576482676920839500.a n = (25 * 2 ^ (n + 3) : ℚ) - (198 + (392 * n : ℚ) / 3 + (36 * n ^ 2 : ℚ) + (10 * n ^ 3 : ℚ) / 3) := by simp only [A169833.P12576482676920839500.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A169833, hz, SequenceProof.roundAway_intCast]
