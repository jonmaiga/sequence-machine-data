import Prog.A356.A3562
import Proof.Lib.Integral

/-- A356251: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A356251.anchor (n : ℕ) :
    (A356251 n : ℚ) = (n * (n + 1) * (n + 2) * (n + 3) * (2 * n + 1) : ℚ) / 12 := by
  have hr : ∀ m, A356251.P8302659967557249373.a (m + 6) = (6 : ℚ) * A356251.P8302659967557249373.a (m + 5) + (-15 : ℚ) * A356251.P8302659967557249373.a (m + 4) + (20 : ℚ) * A356251.P8302659967557249373.a (m + 3) + (-15 : ℚ) * A356251.P8302659967557249373.a (m + 2) + (6 : ℚ) * A356251.P8302659967557249373.a (m + 1) + (-1 : ℚ) * A356251.P8302659967557249373.a m := by
    intro m
    simp only [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A356251.P8302659967557249373.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨50, by norm_num [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨210, by norm_num [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨630, by norm_num [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1540, by norm_num [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z5 + -15 * z4 + 20 * z3 + -15 * z2 + 6 * z1 + -1 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A356251.P8302659967557249373.a n = (n * (n + 1) * (n + 2) * (n + 3) * (2 * n + 1) : ℚ) / 12 := by simp only [A356251.P8302659967557249373.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A356251, hz, SequenceProof.roundAway_intCast]
