import Prog.A153.A1538
import Proof.Lib.Integral

/-- A153848: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A153848.anchor (n : ℕ) :
    (A153848 (n + 1) : ℚ) = (7 * ((10 ^ (2 * (n + 1)) : ℤ) - 1) : ℚ) / 33 := by
  have hr : ∀ m, A153848.P16593566802323465093.a (m + 2) = (101 : ℚ) * A153848.P16593566802323465093.a (m + 1) + (-100 : ℚ) * A153848.P16593566802323465093.a m := by
    intro m
    simp only [A153848.P16593566802323465093.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A153848.P16593566802323465093.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨21, by norm_num [A153848.P16593566802323465093.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2121, by norm_num [A153848.P16593566802323465093.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨101 * z1 + -100 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A153848.P16593566802323465093.a n = (7 * ((10 ^ (2 * (n + 1)) : ℤ) - 1) : ℚ) / 33 := by simp only [A153848.P16593566802323465093.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A153848, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
