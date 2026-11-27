import Prog.A260.A2608
import Proof.Lib.Integral

/-- A260846: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A260846.anchor (n : ℕ) :
    (A260846 n : ℚ) = (-3 - (28 * 3 ^ n : ℤ) + (73 * 15 ^ n : ℤ) : ℚ) / 21 := by
  have hr : ∀ m, A260846.P3734721175873250146.a (m + 3) = (19 : ℚ) * A260846.P3734721175873250146.a (m + 2) + (-63 : ℚ) * A260846.P3734721175873250146.a (m + 1) + (45 : ℚ) * A260846.P3734721175873250146.a m := by
    intro m
    simp only [A260846.P3734721175873250146.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A260846.P3734721175873250146.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A260846.P3734721175873250146.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨48, by norm_num [A260846.P3734721175873250146.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨770, by norm_num [A260846.P3734721175873250146.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨19 * z2 + -63 * z1 + 45 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A260846.P3734721175873250146.a n = (-3 - (28 * 3 ^ n : ℤ) + (73 * 15 ^ n : ℤ) : ℚ) / 21 := by simp only [A260846.P3734721175873250146.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A260846, hz, SequenceProof.roundAway_intCast]
