import Prog.A294.A2943
import Proof.Lib.Integral

/-- A294329: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A294329.anchor (n : ℕ) :
    (A294329 n : ℚ) = (8 * (((9 * n + 8) * 10 ^ n : ℤ) - 8) : ℚ) / 81 := by
  have hr : ∀ m, A294329.P10012392311759906179.a (m + 3) = (21 : ℚ) * A294329.P10012392311759906179.a (m + 2) + (-120 : ℚ) * A294329.P10012392311759906179.a (m + 1) + (100 : ℚ) * A294329.P10012392311759906179.a m := by
    intro m
    simp only [A294329.P10012392311759906179.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A294329.P10012392311759906179.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A294329.P10012392311759906179.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A294329.P10012392311759906179.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨256, by norm_num [A294329.P10012392311759906179.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨21 * z2 + -120 * z1 + 100 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A294329.P10012392311759906179.a n = (8 * (((9 * n + 8) * 10 ^ n : ℤ) - 8) : ℚ) / 81 := by simp only [A294329.P10012392311759906179.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A294329, hz, SequenceProof.roundAway_intCast]
