import Prog.A193.A1930
import Proof.Lib.Integral

/-- A193053: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A193053.anchor (n : ℕ) :
    (A193053 n : ℚ) = ((14 * n * (n + 3) : ℤ) + ((2 * n : ℤ) - 5) * (-1) ^ n + 21 : ℚ) / 16 := by
  have hr : ∀ m, A193053.P9112538412696112889.a (m + 5) = (1 : ℚ) * A193053.P9112538412696112889.a (m + 4) + (2 : ℚ) * A193053.P9112538412696112889.a (m + 3) + (-2 : ℚ) * A193053.P9112538412696112889.a (m + 2) + (-1 : ℚ) * A193053.P9112538412696112889.a (m + 1) + (1 : ℚ) * A193053.P9112538412696112889.a m := by
    intro m
    simp only [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A193053.P9112538412696112889.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨17, by norm_num [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨26, by norm_num [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z4 + 2 * z3 + -2 * z2 + -1 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A193053.P9112538412696112889.a n = ((14 * n * (n + 3) : ℤ) + ((2 * n : ℤ) - 5) * (-1) ^ n + 21 : ℚ) / 16 := by simp only [A193053.P9112538412696112889.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A193053, hz, SequenceProof.roundAway_intCast]
