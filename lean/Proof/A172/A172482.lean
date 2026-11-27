import Prog.A172.A1724
import Proof.Lib.Integral

/-- A172482: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A172482.anchor (n : ℕ) :
    (A172482 n : ℚ) = ((1 + n) * (9 + 11 * n + 4 * n ^ 2) : ℚ) / 3 := by
  have hr : ∀ m, A172482.P10586702625877607531.a (m + 4) = (4 : ℚ) * A172482.P10586702625877607531.a (m + 3) + (-6 : ℚ) * A172482.P10586702625877607531.a (m + 2) + (4 : ℚ) * A172482.P10586702625877607531.a (m + 1) + (-1 : ℚ) * A172482.P10586702625877607531.a m := by
    intro m
    simp only [A172482.P10586702625877607531.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A172482.P10586702625877607531.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A172482.P10586702625877607531.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A172482.P10586702625877607531.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨47, by norm_num [A172482.P10586702625877607531.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨104, by norm_num [A172482.P10586702625877607531.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A172482.P10586702625877607531.a n = ((1 + n) * (9 + 11 * n + 4 * n ^ 2) : ℚ) / 3 := by simp only [A172482.P10586702625877607531.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A172482, hz, SequenceProof.roundAway_intCast]
