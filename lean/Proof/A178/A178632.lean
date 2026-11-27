import Prog.A178.A1786
import Proof.Lib.Integral

/-- A178632: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A178632.anchor (n : ℕ) :
    (A178632 (n + 1) : ℚ) = 45 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2 := by
  have hr : ∀ m, A178632.P17549049397512777465.a (m + 3) = (111 : ℚ) * A178632.P17549049397512777465.a (m + 2) + (-1110 : ℚ) * A178632.P17549049397512777465.a (m + 1) + (1000 : ℚ) * A178632.P17549049397512777465.a m := by
    intro m
    simp only [A178632.P17549049397512777465.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A178632.P17549049397512777465.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨45, by norm_num [A178632.P17549049397512777465.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5445, by norm_num [A178632.P17549049397512777465.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨554445, by norm_num [A178632.P17549049397512777465.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A178632.P17549049397512777465.a n = 45 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2 := by simp only [A178632.P17549049397512777465.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A178632, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
