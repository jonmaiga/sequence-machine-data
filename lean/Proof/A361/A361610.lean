import Prog.A361.A3616
import Proof.Lib.Integral

/-- A361610: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A361610.anchor (n : ℕ) :
    (A361610 n : ℚ) = (5 ^ n * (n + 1) * (4 * n ^ 2 + 14 * n + 3) : ℚ) / 3 := by
  have hr : ∀ m, A361610.P8255674770240994609.a (m + 4) = (20 : ℚ) * A361610.P8255674770240994609.a (m + 3) + (-150 : ℚ) * A361610.P8255674770240994609.a (m + 2) + (500 : ℚ) * A361610.P8255674770240994609.a (m + 1) + (-625 : ℚ) * A361610.P8255674770240994609.a m := by
    intro m
    simp only [A361610.P8255674770240994609.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A361610.P8255674770240994609.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A361610.P8255674770240994609.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨70, by norm_num [A361610.P8255674770240994609.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1175, by norm_num [A361610.P8255674770240994609.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13500, by norm_num [A361610.P8255674770240994609.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨20 * z3 + -150 * z2 + 500 * z1 + -625 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A361610.P8255674770240994609.a n = (5 ^ n * (n + 1) * (4 * n ^ 2 + 14 * n + 3) : ℚ) / 3 := by simp only [A361610.P8255674770240994609.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A361610, hz, SequenceProof.roundAway_intCast]
