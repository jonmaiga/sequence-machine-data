import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083294: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083294.anchor (n : ℕ) :
    (A083294 n : ℚ) = (4 + (-9) ^ n : ℚ) / 5 := by
  have hr : ∀ m, A083294.P9173184102920641349.a (m + 2) = (-8 : ℚ) * A083294.P9173184102920641349.a (m + 1) + (9 : ℚ) * A083294.P9173184102920641349.a m := by
    intro m
    simp only [A083294.P9173184102920641349.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083294.P9173184102920641349.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083294.P9173184102920641349.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-1, by norm_num [A083294.P9173184102920641349.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-8 * z1 + 9 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083294.P9173184102920641349.a n = (4 + (-9) ^ n : ℚ) / 5 := by simp only [A083294.P9173184102920641349.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083294, hz, SequenceProof.roundAway_intCast]
