import Prog.A090.A0900
import Proof.Lib.Integral

/-- A090019: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A090019.anchor (n : ℕ) :
    (A090019 n : ℚ) = (3 * 10 ^ n + 2 * 0 ^ n : ℚ) / 5 := by
  have hr : ∀ m, A090019.P5963741773363223307.a (m + 2) = (10 : ℚ) * A090019.P5963741773363223307.a (m + 1) := by
    intro m
    simp only [A090019.P5963741773363223307.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A090019.P5963741773363223307.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A090019.P5963741773363223307.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A090019.P5963741773363223307.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨10 * z1, ?_⟩
        rw [hr, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A090019.P5963741773363223307.a n = (3 * 10 ^ n + 2 * 0 ^ n : ℚ) / 5 := by simp only [A090019.P5963741773363223307.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A090019, hz, SequenceProof.roundAway_intCast]
