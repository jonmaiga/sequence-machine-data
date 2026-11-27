import Prog.A061.A0617
import Proof.Lib.Integral

/-- A061792: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A061792.anchor (n : ℕ) :
    (A061792 n : ℚ) = 49 * ((n * (n + 1) : ℚ) / 2) + 6 := by
  have hr : ∀ m, A061792.P2353258454091927058.a (m + 3) = (3 : ℚ) * A061792.P2353258454091927058.a (m + 2) + (-3 : ℚ) * A061792.P2353258454091927058.a (m + 1) + (1 : ℚ) * A061792.P2353258454091927058.a m := by
    intro m
    simp only [A061792.P2353258454091927058.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A061792.P2353258454091927058.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨6, by norm_num [A061792.P2353258454091927058.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨55, by norm_num [A061792.P2353258454091927058.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨153, by norm_num [A061792.P2353258454091927058.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A061792.P2353258454091927058.a n = 49 * ((n * (n + 1) : ℚ) / 2) + 6 := by simp only [A061792.P2353258454091927058.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A061792, hz, SequenceProof.roundAway_intCast]
