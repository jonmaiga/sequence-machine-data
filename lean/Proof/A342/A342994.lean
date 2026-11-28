import Prog.A342.A3429
import Proof.Lib.Integral

/-- A342994: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A342994.anchor (n : ℕ) :
    (A342994 (n + 1) : ℚ) = ((1000 ^ (n + 1) : ℤ) - 1 : ℚ) * ((220 : ℚ) / 333) := by
  have hr : ∀ m, A342994.P11622693426980430275.a (m + 2) = (1001 : ℚ) * A342994.P11622693426980430275.a (m + 1) + (-1000 : ℚ) * A342994.P11622693426980430275.a m := by
    intro m
    simp only [A342994.P11622693426980430275.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A342994.P11622693426980430275.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨660, by norm_num [A342994.P11622693426980430275.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨660660, by norm_num [A342994.P11622693426980430275.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1001 * z1 + -1000 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A342994.P11622693426980430275.a n = ((1000 ^ (n + 1) : ℤ) - 1 : ℚ) * ((220 : ℚ) / 333) := by simp only [A342994.P11622693426980430275.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A342994, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
