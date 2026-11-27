import Prog.A300.A3002
import Proof.Lib.Integral

/-- A300254: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A300254.anchor (n : ℕ) :
    (A300254 n : ℚ) = (25 * (n + 1) * (4 * n + 3) * (5 * n + 4) : ℚ) / 3 := by
  have hr : ∀ m, A300254.P9722365741701770478.a (m + 4) = (4 : ℚ) * A300254.P9722365741701770478.a (m + 3) + (-6 : ℚ) * A300254.P9722365741701770478.a (m + 2) + (4 : ℚ) * A300254.P9722365741701770478.a (m + 1) + (-1 : ℚ) * A300254.P9722365741701770478.a m := by
    intro m
    simp only [A300254.P9722365741701770478.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A300254.P9722365741701770478.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨100, by norm_num [A300254.P9722365741701770478.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1050, by norm_num [A300254.P9722365741701770478.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3850, by norm_num [A300254.P9722365741701770478.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9500, by norm_num [A300254.P9722365741701770478.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -6 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A300254.P9722365741701770478.a n = (25 * (n + 1) * (4 * n + 3) * (5 * n + 4) : ℚ) / 3 := by simp only [A300254.P9722365741701770478.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A300254, hz, SequenceProof.roundAway_intCast]
