import Prog.A246.A2468
import Proof.Lib.Integral

/-- A246880: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A246880.anchor (n : ℕ) :
    (A246880 n : ℚ) = 6 * (((10 ^ n : ℤ) - 1 : ℚ) / 9) * (10 ^ (n + 1) : ℚ) + (9 * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by
  have hr : ∀ m, A246880.P8352328806762021566.a (m + 3) = (111 : ℚ) * A246880.P8352328806762021566.a (m + 2) + (-1110 : ℚ) * A246880.P8352328806762021566.a (m + 1) + (1000 : ℚ) * A246880.P8352328806762021566.a m := by
    intro m
    simp only [A246880.P8352328806762021566.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A246880.P8352328806762021566.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A246880.P8352328806762021566.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨609, by norm_num [A246880.P8352328806762021566.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨66099, by norm_num [A246880.P8352328806762021566.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A246880.P8352328806762021566.a n = 6 * (((10 ^ n : ℤ) - 1 : ℚ) / 9) * (10 ^ (n + 1) : ℚ) + (9 * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by simp only [A246880.P8352328806762021566.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A246880, hz, SequenceProof.roundAway_intCast]
