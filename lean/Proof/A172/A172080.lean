import Prog.A172.A1720
import Proof.Lib.Integral

/-- A172080: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A172080.anchor (n : ℕ) :
    (A172080 n : ℚ) = ((n : ℤ) * ((12 * n ^ 3 + 10 * n ^ 2 : ℤ) - (9 * n : ℤ) - 7) : ℚ) / 6 := by
  have hr : ∀ m, A172080.P15660566417474558938.a (m + 5) = (5 : ℚ) * A172080.P15660566417474558938.a (m + 4) + (-10 : ℚ) * A172080.P15660566417474558938.a (m + 3) + (10 : ℚ) * A172080.P15660566417474558938.a (m + 2) + (-5 : ℚ) * A172080.P15660566417474558938.a (m + 1) + (1 : ℚ) * A172080.P15660566417474558938.a m := by
    intro m
    simp only [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A172080.P15660566417474558938.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨37, by norm_num [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨190, by norm_num [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨590, by norm_num [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z4 + -10 * z3 + 10 * z2 + -5 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A172080.P15660566417474558938.a n = ((n : ℤ) * ((12 * n ^ 3 + 10 * n ^ 2 : ℤ) - (9 * n : ℤ) - 7) : ℚ) / 6 := by simp only [A172080.P15660566417474558938.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A172080, hz, SequenceProof.roundAway_intCast]
