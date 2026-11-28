import Prog.A176.A1769
import Proof.Lib.Integral

/-- A176965: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A176965.anchor (n : ℕ) :
    (A176965 (n + 1) : ℚ) = (2 ^ n : ℚ) - ((2 ^ (n + 1) : ℤ) * (-1) ^ (n + 1) + 2 : ℚ) / 3 := by
  have hr : ∀ m, A176965.P116604102258624171.a (m + 3) = (1 : ℚ) * A176965.P116604102258624171.a (m + 2) + (4 : ℚ) * A176965.P116604102258624171.a (m + 1) + (-4 : ℚ) * A176965.P116604102258624171.a m := by
    intro m
    simp only [A176965.P116604102258624171.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A176965.P116604102258624171.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A176965.P116604102258624171.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A176965.P116604102258624171.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A176965.P116604102258624171.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z2 + 4 * z1 + -4 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A176965.P116604102258624171.a n = (2 ^ n : ℚ) - ((2 ^ (n + 1) : ℤ) * (-1) ^ (n + 1) + 2 : ℚ) / 3 := by simp only [A176965.P116604102258624171.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A176965, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
