import Prog.A367.A3672
import Proof.Lib.Integral

/-- A367275: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A367275.anchor (n : ℕ) :
    (A367275 (n + 1) : ℚ) = ((3 ^ n : ℤ) * ((9 ^ (n + 1) : ℤ) - 1) : ℚ) / 8 := by
  have hr : ∀ m, A367275.P14864129538831722522.a (m + 2) = (30 : ℚ) * A367275.P14864129538831722522.a (m + 1) + (-81 : ℚ) * A367275.P14864129538831722522.a m := by
    intro m
    simp only [A367275.P14864129538831722522.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A367275.P14864129538831722522.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A367275.P14864129538831722522.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨30, by norm_num [A367275.P14864129538831722522.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨30 * z1 + -81 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A367275.P14864129538831722522.a n = ((3 ^ n : ℤ) * ((9 ^ (n + 1) : ℤ) - 1) : ℚ) / 8 := by simp only [A367275.P14864129538831722522.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A367275, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
