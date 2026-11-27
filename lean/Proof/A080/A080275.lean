import Prog.A080.A0802
import Proof.Lib.Integral

/-- A080275: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A080275.anchor (n : ℕ) :
    (A080275 n : ℚ) = ((-1) ^ n : ℚ) * (1 - (1 : ℚ) / 12 * (n : ℚ) * (n + 1 : ℚ) * (12 - (n : ℤ) + (n ^ 2 : ℤ) : ℚ)) := by
  have hr : ∀ m, A080275.P12646920223701949968.a (m + 5) = (-5 : ℚ) * A080275.P12646920223701949968.a (m + 4) + (-10 : ℚ) * A080275.P12646920223701949968.a (m + 3) + (-10 : ℚ) * A080275.P12646920223701949968.a (m + 2) + (-5 : ℚ) * A080275.P12646920223701949968.a (m + 1) + (-1 : ℚ) * A080275.P12646920223701949968.a m := by
    intro m
    simp only [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A080275.P12646920223701949968.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-6, by norm_num [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨17, by norm_num [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-39, by norm_num [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-5 * z4 + -10 * z3 + -10 * z2 + -5 * z1 + -1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A080275.P12646920223701949968.a n = ((-1) ^ n : ℚ) * (1 - (1 : ℚ) / 12 * (n : ℚ) * (n + 1 : ℚ) * (12 - (n : ℤ) + (n ^ 2 : ℤ) : ℚ)) := by simp only [A080275.P12646920223701949968.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A080275, hz, SequenceProof.roundAway_intCast]
