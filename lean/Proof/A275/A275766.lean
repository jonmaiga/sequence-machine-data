import Prog.A275.A2757
import Proof.Lib.Integral

/-- A275766: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A275766.anchor (n : ℕ) :
    (A275766 (n + 1) : ℚ) = ((5 ^ (2 * (n + 2)) : ℤ) - 1 : ℚ) / 4 := by
  have hr : ∀ m, A275766.P15322754894457421959.a (m + 2) = (26 : ℚ) * A275766.P15322754894457421959.a (m + 1) + (-25 : ℚ) * A275766.P15322754894457421959.a m := by
    intro m
    simp only [A275766.P15322754894457421959.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A275766.P15322754894457421959.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨156, by norm_num [A275766.P15322754894457421959.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3906, by norm_num [A275766.P15322754894457421959.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨26 * z1 + -25 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A275766.P15322754894457421959.a n = ((5 ^ (2 * (n + 2)) : ℤ) - 1 : ℚ) / 4 := by simp only [A275766.P15322754894457421959.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A275766, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
