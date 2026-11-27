import Prog.A398.A3985
import Proof.Lib.Integral

/-- A398517: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A398517.anchor (n : ℕ) :
    (A398517 n : ℚ) = ((4 * n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (5 * n : ℤ) + 6 : ℚ) / 6 := by
  have hr : ∀ m, A398517.P12927652904470706771.a (m + 4) = (4 : ℚ) * A398517.P12927652904470706771.a (m + 3) + (-6 : ℚ) * A398517.P12927652904470706771.a (m + 2) + (4 : ℚ) * A398517.P12927652904470706771.a (m + 1) + (-1 : ℚ) * A398517.P12927652904470706771.a m := by
    intro m
    simp only [A398517.P12927652904470706771.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A398517.P12927652904470706771.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A398517.P12927652904470706771.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A398517.P12927652904470706771.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A398517.P12927652904470706771.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨17, by norm_num [A398517.P12927652904470706771.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A398517.P12927652904470706771.a n = ((4 * n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (5 * n : ℤ) + 6 : ℚ) / 6 := by simp only [A398517.P12927652904470706771.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A398517, hz, SequenceProof.roundAway_intCast]
