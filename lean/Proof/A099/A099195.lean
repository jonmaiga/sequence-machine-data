import Prog.A099.A0991
import Proof.Lib.Integral

/-- A099195: the name formula, an integer: it satisfies a linear recurrence of order 9 with integer coefficients. -/
theorem A099195.anchor (n : ℕ) :
    (A099195 n : ℚ) = (n ^ 2 * (n ^ 6 + 28 * n ^ 4 + 154 * n ^ 2 + 132) : ℚ) / 315 := by
  have hr : ∀ m, A099195.P15537828387083625189.a (m + 9) = (9 : ℚ) * A099195.P15537828387083625189.a (m + 8) + (-36 : ℚ) * A099195.P15537828387083625189.a (m + 7) + (84 : ℚ) * A099195.P15537828387083625189.a (m + 6) + (-126 : ℚ) * A099195.P15537828387083625189.a (m + 5) + (126 : ℚ) * A099195.P15537828387083625189.a (m + 4) + (-84 : ℚ) * A099195.P15537828387083625189.a (m + 3) + (36 : ℚ) * A099195.P15537828387083625189.a (m + 2) + (-9 : ℚ) * A099195.P15537828387083625189.a (m + 1) + (1 : ℚ) * A099195.P15537828387083625189.a m := by
    intro m
    simp only [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A099195.P15537828387083625189.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 9 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨129, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨704, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2945, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10128, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨29953, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨78592, by norm_num [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z8, h8⟩ := ih (m + 8) (by omega)
        obtain ⟨z7, h7⟩ := ih (m + 7) (by omega)
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨9 * z8 + -36 * z7 + 84 * z6 + -126 * z5 + 126 * z4 + -84 * z3 + 36 * z2 + -9 * z1 + 1 * z0, ?_⟩
        rw [hr, h8, h7, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A099195.P15537828387083625189.a n = (n ^ 2 * (n ^ 6 + 28 * n ^ 4 + 154 * n ^ 2 + 132) : ℚ) / 315 := by simp only [A099195.P15537828387083625189.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A099195, hz, SequenceProof.roundAway_intCast]
