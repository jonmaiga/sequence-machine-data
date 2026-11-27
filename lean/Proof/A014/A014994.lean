import Prog.A014.A0149
import Proof.Lib.Integral

/-- A014994: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A014994.anchor (n : ℕ) :
    (A014994 (n + 1) : ℚ) = (1 - (-12) ^ (n + 1) : ℚ) / 13 := by
  have hr : ∀ m, A014994.P7669169134547246301.a (m + 2) = (-11 : ℚ) * A014994.P7669169134547246301.a (m + 1) + (12 : ℚ) * A014994.P7669169134547246301.a m := by
    intro m
    simp only [A014994.P7669169134547246301.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A014994.P7669169134547246301.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A014994.P7669169134547246301.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-11, by norm_num [A014994.P7669169134547246301.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-11 * z1 + 12 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A014994.P7669169134547246301.a n = (1 - (-12) ^ (n + 1) : ℚ) / 13 := by simp only [A014994.P7669169134547246301.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A014994, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
