import Prog.A127.A1279
import Proof.Lib.Integral

/-- A127982: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A127982.anchor (n : ℕ) :
    (A127982 (n + 1) : ℚ) = ((n + 1 : ℚ) - (1 : ℚ) / 3) * (2 ^ (n + 1) : ℚ) - (n + 1 : ℚ) / 2 + (1 : ℚ) / 4 + ((-1) ^ (n + 1) : ℚ) / 12 := by
  have hr : ∀ m, A127982.P15653594524289181623.a (m + 5) = (5 : ℚ) * A127982.P15653594524289181623.a (m + 4) + (-7 : ℚ) * A127982.P15653594524289181623.a (m + 3) + (-1 : ℚ) * A127982.P15653594524289181623.a (m + 2) + (8 : ℚ) * A127982.P15653594524289181623.a (m + 1) + (-4 : ℚ) * A127982.P15653594524289181623.a m := by
    intro m
    simp only [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A127982.P15653594524289181623.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨20, by norm_num [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨57, by norm_num [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨147, by norm_num [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z4 + -7 * z3 + -1 * z2 + 8 * z1 + -4 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A127982.P15653594524289181623.a n = ((n + 1 : ℚ) - (1 : ℚ) / 3) * (2 ^ (n + 1) : ℚ) - (n + 1 : ℚ) / 2 + (1 : ℚ) / 4 + ((-1) ^ (n + 1) : ℚ) / 12 := by simp only [A127982.P15653594524289181623.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A127982, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
