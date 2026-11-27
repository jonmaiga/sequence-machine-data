import Prog.A181.A1817
import Proof.Lib.Integral

/-- A181718: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A181718.anchor (n : ℕ) :
    (A181718 n : ℚ) = (1 : ℚ) / 9 * ((10 ^ (2 * n) + 10 ^ n : ℤ) - 2 : ℚ) := by
  have hr : ∀ m, A181718.P6805003462732742180.a (m + 3) = (111 : ℚ) * A181718.P6805003462732742180.a (m + 2) + (-1110 : ℚ) * A181718.P6805003462732742180.a (m + 1) + (1000 : ℚ) * A181718.P6805003462732742180.a m := by
    intro m
    simp only [A181718.P6805003462732742180.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A181718.P6805003462732742180.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A181718.P6805003462732742180.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12, by norm_num [A181718.P6805003462732742180.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1122, by norm_num [A181718.P6805003462732742180.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A181718.P6805003462732742180.a n = (1 : ℚ) / 9 * ((10 ^ (2 * n) + 10 ^ n : ℤ) - 2 : ℚ) := by simp only [A181718.P6805003462732742180.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A181718, hz, SequenceProof.roundAway_intCast]
