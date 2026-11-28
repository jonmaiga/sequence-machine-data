import Prog.A342.A3424
import Proof.Lib.Integral

/-- A342405: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A342405.anchor (n : ℕ) :
    (A342405 (n + 1) : ℚ) = ((27 ^ (n + 1) : ℤ) - (3 * 9 ^ (n + 1) : ℤ) - (3 * 12 ^ (n + 1) : ℤ) : ℚ) / 6 + (6 ^ (n + 1) : ℚ) := by
  have hr : ∀ m, A342405.P270956778832168628.a (m + 4) = (54 : ℚ) * A342405.P270956778832168628.a (m + 3) + (-963 : ℚ) * A342405.P270956778832168628.a (m + 2) + (6966 : ℚ) * A342405.P270956778832168628.a (m + 1) + (-17496 : ℚ) * A342405.P270956778832168628.a m := by
    intro m
    simp only [A342405.P270956778832168628.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A342405.P270956778832168628.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A342405.P270956778832168628.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨45, by norm_num [A342405.P270956778832168628.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2268, by norm_num [A342405.P270956778832168628.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨76221, by norm_num [A342405.P270956778832168628.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨54 * z3 + -963 * z2 + 6966 * z1 + -17496 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A342405.P270956778832168628.a n = ((27 ^ (n + 1) : ℤ) - (3 * 9 ^ (n + 1) : ℤ) - (3 * 12 ^ (n + 1) : ℤ) : ℚ) / 6 + (6 ^ (n + 1) : ℚ) := by simp only [A342405.P270956778832168628.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A342405, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
