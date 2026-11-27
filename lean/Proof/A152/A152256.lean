import Prog.A152.A1522
import Proof.Lib.Integral

/-- A152256: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A152256.anchor (n : ℕ) :
    (A152256 n : ℚ) = (((3 ^ n : ℤ) - 1) * ((3 ^ n + 1) ^ 2 : ℤ) : ℚ) / 32 := by
  have hr : ∀ m, A152256.P7347727943600908565.a (m + 4) = (40 : ℚ) * A152256.P7347727943600908565.a (m + 3) + (-390 : ℚ) * A152256.P7347727943600908565.a (m + 2) + (1080 : ℚ) * A152256.P7347727943600908565.a (m + 1) + (-729 : ℚ) * A152256.P7347727943600908565.a m := by
    intro m
    simp only [A152256.P7347727943600908565.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A152256.P7347727943600908565.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A152256.P7347727943600908565.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A152256.P7347727943600908565.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨25, by norm_num [A152256.P7347727943600908565.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨637, by norm_num [A152256.P7347727943600908565.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨40 * z3 + -390 * z2 + 1080 * z1 + -729 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A152256.P7347727943600908565.a n = (((3 ^ n : ℤ) - 1) * ((3 ^ n + 1) ^ 2 : ℤ) : ℚ) / 32 := by simp only [A152256.P7347727943600908565.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A152256, hz, SequenceProof.roundAway_intCast]
