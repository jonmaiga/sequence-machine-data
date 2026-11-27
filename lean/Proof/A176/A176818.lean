import Prog.A176.A1768
import Proof.Lib.Integral

/-- A176818: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A176818.anchor (n : ℕ) :
    (A176818 n : ℚ) = (3 ^ (2 * n + 1) + 2 ^ (n + 2) : ℚ) / 7 := by
  have hr : ∀ m, A176818.P13236942943764050554.a (m + 2) = (11 : ℚ) * A176818.P13236942943764050554.a (m + 1) + (-18 : ℚ) * A176818.P13236942943764050554.a m := by
    intro m
    simp only [A176818.P13236942943764050554.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A176818.P13236942943764050554.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A176818.P13236942943764050554.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A176818.P13236942943764050554.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨11 * z1 + -18 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A176818.P13236942943764050554.a n = (3 ^ (2 * n + 1) + 2 ^ (n + 2) : ℚ) / 7 := by simp only [A176818.P13236942943764050554.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A176818, hz, SequenceProof.roundAway_intCast]
