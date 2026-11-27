import Prog.A085.A0850
import Proof.Lib.Integral

/-- A085046: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A085046.anchor (n : ℕ) :
    (A085046 (n + 1) : ℚ) = ((n + 1) ^ 2 : ℚ) - (1 + (-1) ^ (n + 1) : ℚ) / 2 := by
  have hr : ∀ m, A085046.P4462696690732466956.a (m + 4) = (2 : ℚ) * A085046.P4462696690732466956.a (m + 3) + (-2 : ℚ) * A085046.P4462696690732466956.a (m + 1) + (1 : ℚ) * A085046.P4462696690732466956.a m := by
    intro m
    simp only [A085046.P4462696690732466956.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A085046.P4462696690732466956.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A085046.P4462696690732466956.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A085046.P4462696690732466956.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A085046.P4462696690732466956.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A085046.P4462696690732466956.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A085046.P4462696690732466956.a n = ((n + 1) ^ 2 : ℚ) - (1 + (-1) ^ (n + 1) : ℚ) / 2 := by simp only [A085046.P4462696690732466956.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A085046, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
