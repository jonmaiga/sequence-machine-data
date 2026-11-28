import Prog.A087.A0874
import Proof.Lib.Integral

/-- A087431: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A087431.anchor (n : ℕ) :
    (A087431 n : ℚ) = (0 ^ n : ℚ) / 2 + (2 ^ n * (n ^ 2 + n + 2) : ℚ) / 4 := by
  have hr : ∀ m, A087431.P10061386920331768841.a (m + 4) = (6 : ℚ) * A087431.P10061386920331768841.a (m + 3) + (-12 : ℚ) * A087431.P10061386920331768841.a (m + 2) + (8 : ℚ) * A087431.P10061386920331768841.a (m + 1) := by
    intro m
    simp only [A087431.P10061386920331768841.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A087431.P10061386920331768841.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A087431.P10061386920331768841.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A087431.P10061386920331768841.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A087431.P10061386920331768841.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨28, by norm_num [A087431.P10061386920331768841.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨6 * z3 + -12 * z2 + 8 * z1, ?_⟩
        rw [hr, h3, h2, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A087431.P10061386920331768841.a n = (0 ^ n : ℚ) / 2 + (2 ^ n * (n ^ 2 + n + 2) : ℚ) / 4 := by simp only [A087431.P10061386920331768841.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A087431, hz, SequenceProof.roundAway_intCast]
