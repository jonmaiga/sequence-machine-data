import Prog.A080.A0804
import Proof.Lib.Integral

/-- A080422: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A080422.anchor (n : ℕ) :
    (A080422 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (n + 12) * 3 ^ n : ℚ) / 72 := by
  have hr : ∀ m, A080422.P4749161635924458651.a (m + 5) = (15 : ℚ) * A080422.P4749161635924458651.a (m + 4) + (-90 : ℚ) * A080422.P4749161635924458651.a (m + 3) + (270 : ℚ) * A080422.P4749161635924458651.a (m + 2) + (-405 : ℚ) * A080422.P4749161635924458651.a (m + 1) + (243 : ℚ) * A080422.P4749161635924458651.a m := by
    intro m
    simp only [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A080422.P4749161635924458651.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨13, by norm_num [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨105, by norm_num [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨675, by norm_num [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3780, by norm_num [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨15 * z4 + -90 * z3 + 270 * z2 + -405 * z1 + 243 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A080422.P4749161635924458651.a n = ((n + 1) * (n + 2) * (n + 3) * (n + 12) * 3 ^ n : ℚ) / 72 := by simp only [A080422.P4749161635924458651.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A080422, hz, SequenceProof.roundAway_intCast]
