import Prog.A198.A1980
import Proof.Lib.Integral

/-- A198080: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A198080.anchor (n : ℕ) :
    (A198080 n : ℚ) = ((3 ^ (3 * n + 3) : ℤ) - (26 * n : ℤ) - 27 : ℚ) / 169 := by
  have hr : ∀ m, A198080.P9521293919140138106.a (m + 3) = (29 : ℚ) * A198080.P9521293919140138106.a (m + 2) + (-55 : ℚ) * A198080.P9521293919140138106.a (m + 1) + (27 : ℚ) * A198080.P9521293919140138106.a m := by
    intro m
    simp only [A198080.P9521293919140138106.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A198080.P9521293919140138106.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A198080.P9521293919140138106.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A198080.P9521293919140138106.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨116, by norm_num [A198080.P9521293919140138106.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨29 * z2 + -55 * z1 + 27 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A198080.P9521293919140138106.a n = ((3 ^ (3 * n + 3) : ℤ) - (26 * n : ℤ) - 27 : ℚ) / 169 := by simp only [A198080.P9521293919140138106.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A198080, hz, SequenceProof.roundAway_intCast]
