import Prog.A168.A1683
import Proof.Lib.Integral

/-- A168376: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A168376.anchor (n : ℕ) :
    (A168376 (n + 1) : ℚ) = ((14 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 9 : ℚ) / 4 := by
  have hr : ∀ m, A168376.P11002271166316434367.a (m + 3) = (1 : ℚ) * A168376.P11002271166316434367.a (m + 2) + (1 : ℚ) * A168376.P11002271166316434367.a (m + 1) + (-1 : ℚ) * A168376.P11002271166316434367.a m := by
    intro m
    simp only [A168376.P11002271166316434367.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A168376.P11002271166316434367.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A168376.P11002271166316434367.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A168376.P11002271166316434367.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A168376.P11002271166316434367.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z2 + 1 * z1 + -1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A168376.P11002271166316434367.a n = ((14 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 9 : ℚ) / 4 := by simp only [A168376.P11002271166316434367.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A168376, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
