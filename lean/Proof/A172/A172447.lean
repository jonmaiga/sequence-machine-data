import Prog.A172.A1724
import Proof.Lib.Integral

/-- A172447: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A172447.anchor (n : ℕ) :
    (A172447 n : ℚ) = (-1 + (5 * 2 ^ (2 * n + 1) : ℤ) - (3 * n : ℤ) : ℚ) / 9 := by
  have hr : ∀ m, A172447.P16496961469177548070.a (m + 3) = (6 : ℚ) * A172447.P16496961469177548070.a (m + 2) + (-9 : ℚ) * A172447.P16496961469177548070.a (m + 1) + (4 : ℚ) * A172447.P16496961469177548070.a m := by
    intro m
    simp only [A172447.P16496961469177548070.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A172447.P16496961469177548070.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A172447.P16496961469177548070.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A172447.P16496961469177548070.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨17, by norm_num [A172447.P16496961469177548070.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z2 + -9 * z1 + 4 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A172447.P16496961469177548070.a n = (-1 + (5 * 2 ^ (2 * n + 1) : ℤ) - (3 * n : ℤ) : ℚ) / 9 := by simp only [A172447.P16496961469177548070.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A172447, hz, SequenceProof.roundAway_intCast]
