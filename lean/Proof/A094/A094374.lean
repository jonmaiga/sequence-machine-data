import Prog.A094.A0943
import Proof.Lib.Integral

/-- A094374: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A094374.anchor (n : ℕ) :
    (A094374 n : ℚ) = ((3 ^ n : ℤ) - 1 : ℚ) / 2 + (2 ^ n : ℚ) := by
  have hr : ∀ m, A094374.P10884505798033370508.a (m + 3) = (6 : ℚ) * A094374.P10884505798033370508.a (m + 2) + (-11 : ℚ) * A094374.P10884505798033370508.a (m + 1) + (6 : ℚ) * A094374.P10884505798033370508.a m := by
    intro m
    simp only [A094374.P10884505798033370508.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A094374.P10884505798033370508.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A094374.P10884505798033370508.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A094374.P10884505798033370508.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A094374.P10884505798033370508.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z2 + -11 * z1 + 6 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A094374.P10884505798033370508.a n = ((3 ^ n : ℤ) - 1 : ℚ) / 2 + (2 ^ n : ℚ) := by simp only [A094374.P10884505798033370508.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A094374, hz, SequenceProof.roundAway_intCast]
