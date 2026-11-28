import Prog.A154.A1544
import Proof.Lib.Integral

/-- A154410: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A154410.anchor (n : ℕ) :
    (A154410 n : ℚ) = (5 * (3 * 6 ^ n + 2 ^ n) : ℚ) / 2 := by
  have hr : ∀ m, A154410.P16995251796317733976.a (m + 2) = (8 : ℚ) * A154410.P16995251796317733976.a (m + 1) + (-12 : ℚ) * A154410.P16995251796317733976.a m := by
    intro m
    simp only [A154410.P16995251796317733976.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A154410.P16995251796317733976.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨10, by norm_num [A154410.P16995251796317733976.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨50, by norm_num [A154410.P16995251796317733976.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨8 * z1 + -12 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A154410.P16995251796317733976.a n = (5 * (3 * 6 ^ n + 2 ^ n) : ℚ) / 2 := by simp only [A154410.P16995251796317733976.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A154410, hz, SequenceProof.roundAway_intCast]
