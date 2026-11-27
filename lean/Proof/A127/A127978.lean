import Prog.A127.A1279
import Proof.Lib.Integral

/-- A127978: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A127978.anchor (n : ℕ) :
    (A127978 (n + 2) : ℚ) = (15 * (n + 2) + 34 : ℚ) / 54 * (2 ^ (n + 1) : ℚ) - ((-1) ^ (n + 1) * (6 * (n + 2) + 5 : ℤ) : ℚ) / 27 := by
  have hr : ∀ m, A127978.P9018358776630483187.a (m + 4) = (2 : ℚ) * A127978.P9018358776630483187.a (m + 3) + (3 : ℚ) * A127978.P9018358776630483187.a (m + 2) + (-4 : ℚ) * A127978.P9018358776630483187.a (m + 1) + (-4 : ℚ) * A127978.P9018358776630483187.a m := by
    intro m
    simp only [A127978.P9018358776630483187.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A127978.P9018358776630483187.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A127978.P9018358776630483187.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A127978.P9018358776630483187.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A127978.P9018358776630483187.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨31, by norm_num [A127978.P9018358776630483187.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + 3 * z2 + -4 * z1 + -4 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A127978.P9018358776630483187.a n = (15 * (n + 2) + 34 : ℚ) / 54 * (2 ^ (n + 1) : ℚ) - ((-1) ^ (n + 1) * (6 * (n + 2) + 5 : ℤ) : ℚ) / 27 := by simp only [A127978.P9018358776630483187.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A127978, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
