import Prog.A340.A3406
import Proof.Lib.Integral

/-- A340627: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A340627.anchor (n : ℕ) :
    (A340627 n : ℚ) = ((11 * 2 ^ n : ℤ) - 2 * (-1) ^ n : ℚ) / 3 := by
  have hr : ∀ m, A340627.P10853800125326319315.a (m + 2) = (1 : ℚ) * A340627.P10853800125326319315.a (m + 1) + (2 : ℚ) * A340627.P10853800125326319315.a m := by
    intro m
    simp only [A340627.P10853800125326319315.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A340627.P10853800125326319315.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A340627.P10853800125326319315.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A340627.P10853800125326319315.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z1 + 2 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A340627.P10853800125326319315.a n = ((11 * 2 ^ n : ℤ) - 2 * (-1) ^ n : ℚ) / 3 := by simp only [A340627.P10853800125326319315.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A340627, hz, SequenceProof.roundAway_intCast]
