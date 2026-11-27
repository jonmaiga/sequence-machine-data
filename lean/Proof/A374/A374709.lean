import Prog.A374.A3747
import Proof.Lib.Integral

/-- A374709: the name formula, an integer: it satisfies a linear recurrence of order 8 with integer coefficients. -/
theorem A374709.anchor (n : ℕ) :
    (A374709 n : ℚ) = ((n : ℤ) * ((6 * n ^ 4 + 8 * n ^ 3 + 1 : ℤ) - (-1) ^ n) : ℚ) / 16 := by
  have hr : ∀ m, A374709.P11449870126856442390.a (m + 8) = (4 : ℚ) * A374709.P11449870126856442390.a (m + 7) + (-4 : ℚ) * A374709.P11449870126856442390.a (m + 6) + (-4 : ℚ) * A374709.P11449870126856442390.a (m + 5) + (10 : ℚ) * A374709.P11449870126856442390.a (m + 4) + (-4 : ℚ) * A374709.P11449870126856442390.a (m + 3) + (-4 : ℚ) * A374709.P11449870126856442390.a (m + 2) + (4 : ℚ) * A374709.P11449870126856442390.a (m + 1) + (-1 : ℚ) * A374709.P11449870126856442390.a m := by
    intro m
    simp only [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A374709.P11449870126856442390.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 8 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨20, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨132, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨512, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1485, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3564, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7504, by norm_num [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z7, h7⟩ := ih (m + 7) (by omega)
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z7 + -4 * z6 + -4 * z5 + 10 * z4 + -4 * z3 + -4 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h7, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A374709.P11449870126856442390.a n = ((n : ℤ) * ((6 * n ^ 4 + 8 * n ^ 3 + 1 : ℤ) - (-1) ^ n) : ℚ) / 16 := by simp only [A374709.P11449870126856442390.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A374709, hz, SequenceProof.roundAway_intCast]
