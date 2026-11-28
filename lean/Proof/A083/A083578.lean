import Prog.A083.A0835
import Proof.Lib.Integral

/-- A083578: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083578.anchor (n : ℕ) :
    (A083578 n : ℚ) = ((6 ^ n : ℤ) + (-4) ^ n : ℚ) / 2 := by
  have hr : ∀ m, A083578.P12510387591795755715.a (m + 2) = (2 : ℚ) * A083578.P12510387591795755715.a (m + 1) + (24 : ℚ) * A083578.P12510387591795755715.a m := by
    intro m
    simp only [A083578.P12510387591795755715.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083578.P12510387591795755715.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083578.P12510387591795755715.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A083578.P12510387591795755715.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z1 + 24 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083578.P12510387591795755715.a n = ((6 ^ n : ℤ) + (-4) ^ n : ℚ) / 2 := by simp only [A083578.P12510387591795755715.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083578, hz, SequenceProof.roundAway_intCast]
