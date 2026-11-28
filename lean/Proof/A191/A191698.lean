import Prog.A191.A1916
import Proof.Lib.Integral

/-- A191698: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A191698.anchor (n : ℕ) :
    (A191698 n : ℚ) = ((122 * n ^ 3 + 140 * n ^ 2 + 45 * n : ℤ) + (3 * n : ℤ) * (-1) ^ n : ℚ) / 8 := by
  have hr : ∀ m, A191698.P14614098435645277721.a (m + 6) = (2 : ℚ) * A191698.P14614098435645277721.a (m + 5) + (1 : ℚ) * A191698.P14614098435645277721.a (m + 4) + (-4 : ℚ) * A191698.P14614098435645277721.a (m + 3) + (1 : ℚ) * A191698.P14614098435645277721.a (m + 2) + (2 : ℚ) * A191698.P14614098435645277721.a (m + 1) + (-1 : ℚ) * A191698.P14614098435645277721.a m := by
    intro m
    simp only [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A191698.P14614098435645277721.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨38, by norm_num [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨204, by norm_num [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨585, by norm_num [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1280, by norm_num [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2370, by norm_num [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z5 + 1 * z4 + -4 * z3 + 1 * z2 + 2 * z1 + -1 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A191698.P14614098435645277721.a n = ((122 * n ^ 3 + 140 * n ^ 2 + 45 * n : ℤ) + (3 * n : ℤ) * (-1) ^ n : ℚ) / 8 := by simp only [A191698.P14614098435645277721.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A191698, hz, SequenceProof.roundAway_intCast]
