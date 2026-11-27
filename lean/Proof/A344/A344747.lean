import Prog.A344.A3447
import Proof.Lib.Integral

/-- A344747: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A344747.anchor (n : ℕ) :
    (A344747 (n + 1) : ℚ) = (1 : ℚ) / 6 * ((3 ^ (n + 1) : ℤ) + (-2) ^ (n + 1) - 1 : ℚ) := by
  have hr : ∀ m, A344747.P11905654126597179754.a (m + 3) = (2 : ℚ) * A344747.P11905654126597179754.a (m + 2) + (5 : ℚ) * A344747.P11905654126597179754.a (m + 1) + (-6 : ℚ) * A344747.P11905654126597179754.a m := by
    intro m
    simp only [A344747.P11905654126597179754.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A344747.P11905654126597179754.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A344747.P11905654126597179754.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A344747.P11905654126597179754.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A344747.P11905654126597179754.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z2 + 5 * z1 + -6 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A344747.P11905654126597179754.a n = (1 : ℚ) / 6 * ((3 ^ (n + 1) : ℤ) + (-2) ^ (n + 1) - 1 : ℚ) := by simp only [A344747.P11905654126597179754.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A344747, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
