import Prog.A167.A1673
import Proof.Lib.Integral

/-- A167386: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A167386.anchor (n : ℕ) :
    (A167386 (n + 1) : ℚ) = ((-1) ^ (n + 1) * (n + 1 : ℤ) * (n + 2 : ℤ) * ((2 * (n + 1) : ℤ) - 5) : ℚ) / 6 := by
  have hr : ∀ m, A167386.P14189741537292289667.a (m + 4) = (-4 : ℚ) * A167386.P14189741537292289667.a (m + 3) + (-6 : ℚ) * A167386.P14189741537292289667.a (m + 2) + (-4 : ℚ) * A167386.P14189741537292289667.a (m + 1) + (-1 : ℚ) * A167386.P14189741537292289667.a m := by
    intro m
    simp only [A167386.P14189741537292289667.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A167386.P14189741537292289667.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A167386.P14189741537292289667.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-1, by norm_num [A167386.P14189741537292289667.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-2, by norm_num [A167386.P14189741537292289667.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A167386.P14189741537292289667.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-4 * z3 + -6 * z2 + -4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A167386.P14189741537292289667.a n = ((-1) ^ (n + 1) * (n + 1 : ℤ) * (n + 2 : ℤ) * ((2 * (n + 1) : ℤ) - 5) : ℚ) / 6 := by simp only [A167386.P14189741537292289667.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A167386, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
