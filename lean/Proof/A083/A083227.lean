import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083227: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083227.anchor (n : ℕ) :
    (A083227 n : ℚ) = ((9 * 10 ^ n : ℤ) + (-10) ^ n : ℚ) / 10 := by
  have hr : ∀ m, A083227.P14725429074094142636.a (m + 2) = (100 : ℚ) * A083227.P14725429074094142636.a m := by
    intro m
    simp only [A083227.P14725429074094142636.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083227.P14725429074094142636.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083227.P14725429074094142636.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A083227.P14725429074094142636.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨100 * z0, ?_⟩
        rw [hr, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083227.P14725429074094142636.a n = ((9 * 10 ^ n : ℤ) + (-10) ^ n : ℚ) / 10 := by simp only [A083227.P14725429074094142636.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083227, hz, SequenceProof.roundAway_intCast]
