import Prog.A132.A1323
import Proof.Lib.Integral

/-- A132395: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A132395.anchor (n : ℕ) :
    (A132395 n : ℚ) = (11 ^ (n + 2) + 12 ^ (2 * n + 1) : ℚ) / 133 := by
  have hr : ∀ m, A132395.P2993895881917100198.a (m + 2) = (155 : ℚ) * A132395.P2993895881917100198.a (m + 1) + (-1584 : ℚ) * A132395.P2993895881917100198.a m := by
    intro m
    simp only [A132395.P2993895881917100198.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A132395.P2993895881917100198.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A132395.P2993895881917100198.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨23, by norm_num [A132395.P2993895881917100198.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨155 * z1 + -1584 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A132395.P2993895881917100198.a n = (11 ^ (n + 2) + 12 ^ (2 * n + 1) : ℚ) / 133 := by simp only [A132395.P2993895881917100198.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A132395, hz, SequenceProof.roundAway_intCast]
