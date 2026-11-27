import Prog.A172.A1724
import Proof.Lib.Integral

/-- A172481: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A172481.anchor (n : ℕ) :
    (A172481 n : ℚ) = ((3 * n * 2 ^ n + 2 ^ (n + 4) : ℤ) + 2 * (-1) ^ n : ℚ) / 18 := by
  have hr : ∀ m, A172481.P6759869960663341763.a (m + 3) = (3 : ℚ) * A172481.P6759869960663341763.a (m + 2) + (-4 : ℚ) * A172481.P6759869960663341763.a m := by
    intro m
    simp only [A172481.P6759869960663341763.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A172481.P6759869960663341763.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A172481.P6759869960663341763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A172481.P6759869960663341763.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A172481.P6759869960663341763.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -4 * z0, ?_⟩
        rw [hr, h2, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A172481.P6759869960663341763.a n = ((3 * n * 2 ^ n + 2 ^ (n + 4) : ℤ) + 2 * (-1) ^ n : ℚ) / 18 := by simp only [A172481.P6759869960663341763.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A172481, hz, SequenceProof.roundAway_intCast]
