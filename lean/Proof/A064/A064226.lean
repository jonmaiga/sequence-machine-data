import Prog.A064.A0642
import Proof.Lib.Integral

/-- A064226: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A064226.anchor (n : ℕ) :
    (A064226 n : ℚ) = (9 * n ^ 2 + 13 * n + 6 : ℚ) / 2 := by
  have hr : ∀ m, A064226.P12479180422057309107.a (m + 3) = (3 : ℚ) * A064226.P12479180422057309107.a (m + 2) + (-3 : ℚ) * A064226.P12479180422057309107.a (m + 1) + (1 : ℚ) * A064226.P12479180422057309107.a m := by
    intro m
    simp only [A064226.P12479180422057309107.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A064226.P12479180422057309107.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A064226.P12479180422057309107.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨14, by norm_num [A064226.P12479180422057309107.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨34, by norm_num [A064226.P12479180422057309107.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A064226.P12479180422057309107.a n = (9 * n ^ 2 + 13 * n + 6 : ℚ) / 2 := by simp only [A064226.P12479180422057309107.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A064226, hz, SequenceProof.roundAway_intCast]
