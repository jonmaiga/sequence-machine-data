import Prog.A268.A2684
import Proof.Lib.Integral

/-- A268484: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A268484.anchor (n : ℕ) :
    (A268484 n : ℚ) = ((n + 1) * (4 * n ^ 2 + 14 * n + 9) : ℚ) / 3 := by
  have hr : ∀ m, A268484.P1731718111071743203.a (m + 4) = (4 : ℚ) * A268484.P1731718111071743203.a (m + 3) + (-6 : ℚ) * A268484.P1731718111071743203.a (m + 2) + (4 : ℚ) * A268484.P1731718111071743203.a (m + 1) + (-1 : ℚ) * A268484.P1731718111071743203.a m := by
    intro m
    simp only [A268484.P1731718111071743203.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A268484.P1731718111071743203.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A268484.P1731718111071743203.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨18, by norm_num [A268484.P1731718111071743203.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨53, by norm_num [A268484.P1731718111071743203.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨116, by norm_num [A268484.P1731718111071743203.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -6 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A268484.P1731718111071743203.a n = ((n + 1) * (4 * n ^ 2 + 14 * n + 9) : ℚ) / 3 := by simp only [A268484.P1731718111071743203.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A268484, hz, SequenceProof.roundAway_intCast]
