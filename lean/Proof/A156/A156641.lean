import Prog.A156.A1566
import Proof.Lib.Integral

/-- A156641: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A156641.anchor (n : ℕ) :
    (A156641 n : ℚ) = (13 * ((100 ^ (n + 1) : ℤ) - 1) : ℚ) / 99 := by
  have hr : ∀ m, A156641.P15244691751198412398.a (m + 2) = (101 : ℚ) * A156641.P15244691751198412398.a (m + 1) + (-100 : ℚ) * A156641.P15244691751198412398.a m := by
    intro m
    simp only [A156641.P15244691751198412398.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A156641.P15244691751198412398.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨13, by norm_num [A156641.P15244691751198412398.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1313, by norm_num [A156641.P15244691751198412398.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨101 * z1 + -100 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A156641.P15244691751198412398.a n = (13 * ((100 ^ (n + 1) : ℤ) - 1) : ℚ) / 99 := by simp only [A156641.P15244691751198412398.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A156641, hz, SequenceProof.roundAway_intCast]
