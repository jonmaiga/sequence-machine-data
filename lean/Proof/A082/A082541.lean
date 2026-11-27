import Prog.A082.A0825
import Proof.Lib.Integral

/-- A082541: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A082541.anchor (n : ℕ) :
    (A082541 n : ℚ) = ((7 * 3 ^ n : ℤ) - (4 * 0 ^ n : ℤ) : ℚ) / 3 := by
  have hr : ∀ m, A082541.P2272216912662901726.a (m + 2) = (3 : ℚ) * A082541.P2272216912662901726.a (m + 1) := by
    intro m
    simp only [A082541.P2272216912662901726.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A082541.P2272216912662901726.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A082541.P2272216912662901726.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A082541.P2272216912662901726.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨3 * z1, ?_⟩
        rw [hr, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A082541.P2272216912662901726.a n = ((7 * 3 ^ n : ℤ) - (4 * 0 ^ n : ℤ) : ℚ) / 3 := by simp only [A082541.P2272216912662901726.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A082541, hz, SequenceProof.roundAway_intCast]
