import Prog.A332.A3321
import Proof.Lib.Integral

/-- A332186: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A332186.anchor (n : ℕ) :
    (A332186 n : ℚ) = (8 * ((10 ^ (2 * n + 1) : ℤ) - 1) : ℚ) / 9 - (2 * 10 ^ n : ℚ) := by
  have hr : ∀ m, A332186.P15895336422442795800.a (m + 3) = (111 : ℚ) * A332186.P15895336422442795800.a (m + 2) + (-1110 : ℚ) * A332186.P15895336422442795800.a (m + 1) + (1000 : ℚ) * A332186.P15895336422442795800.a m := by
    intro m
    simp only [A332186.P15895336422442795800.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A332186.P15895336422442795800.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨6, by norm_num [A332186.P15895336422442795800.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨868, by norm_num [A332186.P15895336422442795800.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨88688, by norm_num [A332186.P15895336422442795800.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A332186.P15895336422442795800.a n = (8 * ((10 ^ (2 * n + 1) : ℤ) - 1) : ℚ) / 9 - (2 * 10 ^ n : ℚ) := by simp only [A332186.P15895336422442795800.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A332186, hz, SequenceProof.roundAway_intCast]
