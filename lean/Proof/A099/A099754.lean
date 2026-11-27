import Prog.A099.A0997
import Proof.Lib.Integral

/-- A099754: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A099754.anchor (n : ℕ) :
    (A099754 n : ℚ) = (3 ^ n + 1 : ℚ) / 2 + (2 ^ n : ℚ) := by
  have hr : ∀ m, A099754.P11192121122404424448.a (m + 3) = (6 : ℚ) * A099754.P11192121122404424448.a (m + 2) + (-11 : ℚ) * A099754.P11192121122404424448.a (m + 1) + (6 : ℚ) * A099754.P11192121122404424448.a m := by
    intro m
    simp only [A099754.P11192121122404424448.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A099754.P11192121122404424448.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A099754.P11192121122404424448.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A099754.P11192121122404424448.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A099754.P11192121122404424448.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z2 + -11 * z1 + 6 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A099754.P11192121122404424448.a n = (3 ^ n + 1 : ℚ) / 2 + (2 ^ n : ℚ) := by simp only [A099754.P11192121122404424448.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A099754, hz, SequenceProof.roundAway_intCast]
