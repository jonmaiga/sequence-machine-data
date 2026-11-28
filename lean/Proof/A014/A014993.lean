import Prog.A014.A0149
import Proof.Lib.Integral

/-- A014993: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A014993.anchor (n : ℕ) :
    (A014993 (n + 1) : ℚ) = (1 - (-11) ^ (n + 1) : ℚ) / 12 := by
  have hr : ∀ m, A014993.P11999899681209808891.a (m + 2) = (-10 : ℚ) * A014993.P11999899681209808891.a (m + 1) + (11 : ℚ) * A014993.P11999899681209808891.a m := by
    intro m
    simp only [A014993.P11999899681209808891.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A014993.P11999899681209808891.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A014993.P11999899681209808891.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-10, by norm_num [A014993.P11999899681209808891.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-10 * z1 + 11 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A014993.P11999899681209808891.a n = (1 - (-11) ^ (n + 1) : ℚ) / 12 := by simp only [A014993.P11999899681209808891.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A014993, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
