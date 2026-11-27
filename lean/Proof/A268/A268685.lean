import Prog.A268.A2686
import Proof.Lib.Integral

/-- A268685: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A268685.anchor (n : ℕ) :
    (A268685 n : ℚ) = (3 * (n + 1) * (n + 2) * (3 * n + 1) * (3 * n + 4) : ℚ) / 4 := by
  have hr : ∀ m, A268685.P11914932026926474712.a (m + 5) = (5 : ℚ) * A268685.P11914932026926474712.a (m + 4) + (-10 : ℚ) * A268685.P11914932026926474712.a (m + 3) + (10 : ℚ) * A268685.P11914932026926474712.a (m + 2) + (-5 : ℚ) * A268685.P11914932026926474712.a (m + 1) + (1 : ℚ) * A268685.P11914932026926474712.a m := by
    intro m
    simp only [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A268685.P11914932026926474712.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨6, by norm_num [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨126, by norm_num [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨630, by norm_num [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1950, by norm_num [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4680, by norm_num [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z4 + -10 * z3 + 10 * z2 + -5 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A268685.P11914932026926474712.a n = (3 * (n + 1) * (n + 2) * (3 * n + 1) * (3 * n + 4) : ℚ) / 4 := by simp only [A268685.P11914932026926474712.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A268685, hz, SequenceProof.roundAway_intCast]
