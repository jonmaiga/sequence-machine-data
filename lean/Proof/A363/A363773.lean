import Prog.A363.A3637
import Proof.Lib.Integral

/-- A363773: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A363773.anchor (n : ℕ) :
    (A363773 n : ℚ) = ((4 ^ (n + 1) : ℤ) + (-1) ^ n + 5 : ℚ) / 10 := by
  have hr : ∀ m, A363773.P15156331002441011728.a (m + 3) = (4 : ℚ) * A363773.P15156331002441011728.a (m + 2) + (1 : ℚ) * A363773.P15156331002441011728.a (m + 1) + (-4 : ℚ) * A363773.P15156331002441011728.a m := by
    intro m
    simp only [A363773.P15156331002441011728.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A363773.P15156331002441011728.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A363773.P15156331002441011728.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A363773.P15156331002441011728.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A363773.P15156331002441011728.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z2 + 1 * z1 + -4 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A363773.P15156331002441011728.a n = ((4 ^ (n + 1) : ℤ) + (-1) ^ n + 5 : ℚ) / 10 := by simp only [A363773.P15156331002441011728.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A363773, hz, SequenceProof.roundAway_intCast]
