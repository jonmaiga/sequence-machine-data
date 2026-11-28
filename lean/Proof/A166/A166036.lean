import Prog.A166.A1660
import Proof.Lib.Integral

/-- A166036: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A166036.anchor (n : ℕ) :
    (A166036 n : ℚ) = ((4 ^ n : ℤ) + 8 * (-5) ^ n : ℚ) / 9 := by
  have hr : ∀ m, A166036.P297882067193729902.a (m + 2) = (-1 : ℚ) * A166036.P297882067193729902.a (m + 1) + (20 : ℚ) * A166036.P297882067193729902.a m := by
    intro m
    simp only [A166036.P297882067193729902.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A166036.P297882067193729902.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A166036.P297882067193729902.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-4, by norm_num [A166036.P297882067193729902.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-1 * z1 + 20 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A166036.P297882067193729902.a n = ((4 ^ n : ℤ) + 8 * (-5) ^ n : ℚ) / 9 := by simp only [A166036.P297882067193729902.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A166036, hz, SequenceProof.roundAway_intCast]
