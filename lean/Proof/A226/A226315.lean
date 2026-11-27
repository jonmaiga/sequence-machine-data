import Prog.A226.A2263
import Proof.Lib.Integral

/-- A226315: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A226315.anchor (n : ℕ) :
    (A226315 n : ℚ) = ((n ^ 2 : ℚ) / 8 + (3 * n : ℚ) / 8 - 2) * (2 ^ n : ℚ) + 3 := by
  have hr : ∀ m, A226315.P17901181733144266309.a (m + 4) = (7 : ℚ) * A226315.P17901181733144266309.a (m + 3) + (-18 : ℚ) * A226315.P17901181733144266309.a (m + 2) + (20 : ℚ) * A226315.P17901181733144266309.a (m + 1) + (-8 : ℚ) * A226315.P17901181733144266309.a m := by
    intro m
    simp only [A226315.P17901181733144266309.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A226315.P17901181733144266309.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A226315.P17901181733144266309.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A226315.P17901181733144266309.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A226315.P17901181733144266309.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A226315.P17901181733144266309.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z3 + -18 * z2 + 20 * z1 + -8 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A226315.P17901181733144266309.a n = ((n ^ 2 : ℚ) / 8 + (3 * n : ℚ) / 8 - 2) * (2 ^ n : ℚ) + 3 := by simp only [A226315.P17901181733144266309.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A226315, hz, SequenceProof.roundAway_intCast]
