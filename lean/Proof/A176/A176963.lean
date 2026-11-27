import Prog.A176.A1769
import Proof.Lib.Integral

/-- A176963: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A176963.anchor (n : ℕ) :
    (A176963 (n + 1) : ℚ) = ((10 * 4 ^ (n + 1) : ℤ) - 3 * (-4) ^ (n + 1) - 22 : ℚ) / 30 := by
  have hr : ∀ m, A176963.P12615328682470765563.a (m + 3) = (1 : ℚ) * A176963.P12615328682470765563.a (m + 2) + (16 : ℚ) * A176963.P12615328682470765563.a (m + 1) + (-16 : ℚ) * A176963.P12615328682470765563.a m := by
    intro m
    simp only [A176963.P12615328682470765563.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A176963.P12615328682470765563.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A176963.P12615328682470765563.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A176963.P12615328682470765563.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨27, by norm_num [A176963.P12615328682470765563.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z2 + 16 * z1 + -16 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A176963.P12615328682470765563.a n = ((10 * 4 ^ (n + 1) : ℤ) - 3 * (-4) ^ (n + 1) - 22 : ℚ) / 30 := by simp only [A176963.P12615328682470765563.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A176963, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
