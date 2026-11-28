import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083233: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083233.anchor (n : ℕ) :
    (A083233 n : ℚ) = (3 * 8 ^ n + 0 ^ n : ℚ) / 4 := by
  have hr : ∀ m, A083233.P16089140762988962246.a (m + 2) = (8 : ℚ) * A083233.P16089140762988962246.a (m + 1) := by
    intro m
    simp only [A083233.P16089140762988962246.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083233.P16089140762988962246.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083233.P16089140762988962246.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A083233.P16089140762988962246.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨8 * z1, ?_⟩
        rw [hr, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083233.P16089140762988962246.a n = (3 * 8 ^ n + 0 ^ n : ℚ) / 4 := by simp only [A083233.P16089140762988962246.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083233, hz, SequenceProof.roundAway_intCast]
