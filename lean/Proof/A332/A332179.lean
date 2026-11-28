import Prog.A332.A3321
import Proof.Lib.Integral

/-- A332179: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A332179.anchor (n : ℕ) :
    (A332179 n : ℚ) = (7 * ((10 ^ (2 * n + 1) : ℤ) - 1) : ℚ) / 9 + (2 * 10 ^ n : ℚ) := by
  have hr : ∀ m, A332179.P9733935357505218030.a (m + 3) = (111 : ℚ) * A332179.P9733935357505218030.a (m + 2) + (-1110 : ℚ) * A332179.P9733935357505218030.a (m + 1) + (1000 : ℚ) * A332179.P9733935357505218030.a m := by
    intro m
    simp only [A332179.P9733935357505218030.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A332179.P9733935357505218030.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨9, by norm_num [A332179.P9733935357505218030.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨797, by norm_num [A332179.P9733935357505218030.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨77977, by norm_num [A332179.P9733935357505218030.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A332179.P9733935357505218030.a n = (7 * ((10 ^ (2 * n + 1) : ℤ) - 1) : ℚ) / 9 + (2 * 10 ^ n : ℚ) := by simp only [A332179.P9733935357505218030.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A332179, hz, SequenceProof.roundAway_intCast]
