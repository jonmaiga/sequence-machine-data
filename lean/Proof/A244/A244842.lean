import Prog.A244.A2448
import Proof.Lib.Integral

/-- A244842: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A244842.anchor (n : ℕ) :
    (A244842 (n + 1) : ℚ) = (((10 ^ (n + 1) : ℤ) - 1) * ((10 ^ (n + 1) : ℤ) - 10) : ℚ) / 90 := by
  have hr : ∀ m, A244842.P15463560824316821809.a (m + 3) = (111 : ℚ) * A244842.P15463560824316821809.a (m + 2) + (-1110 : ℚ) * A244842.P15463560824316821809.a (m + 1) + (1000 : ℚ) * A244842.P15463560824316821809.a m := by
    intro m
    simp only [A244842.P15463560824316821809.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A244842.P15463560824316821809.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A244842.P15463560824316821809.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨99, by norm_num [A244842.P15463560824316821809.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10989, by norm_num [A244842.P15463560824316821809.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A244842.P15463560824316821809.a n = (((10 ^ (n + 1) : ℤ) - 1) * ((10 ^ (n + 1) : ℤ) - 10) : ℚ) / 90 := by simp only [A244842.P15463560824316821809.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A244842, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
