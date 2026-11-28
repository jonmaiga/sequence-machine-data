import Prog.A196.A1968
import Proof.Lib.Integral

/-- A196836: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A196836.anchor (n : ℕ) :
    (A196836 n : ℚ) = (1 ^ n + 2 ^ n + 3 ^ n + 4 ^ n : ℚ) / 2 := by
  have hr : ∀ m, A196836.P3333352529070358036.a (m + 4) = (10 : ℚ) * A196836.P3333352529070358036.a (m + 3) + (-35 : ℚ) * A196836.P3333352529070358036.a (m + 2) + (50 : ℚ) * A196836.P3333352529070358036.a (m + 1) + (-24 : ℚ) * A196836.P3333352529070358036.a m := by
    intro m
    simp only [A196836.P3333352529070358036.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A196836.P3333352529070358036.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A196836.P3333352529070358036.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A196836.P3333352529070358036.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A196836.P3333352529070358036.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨50, by norm_num [A196836.P3333352529070358036.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨10 * z3 + -35 * z2 + 50 * z1 + -24 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A196836.P3333352529070358036.a n = (1 ^ n + 2 ^ n + 3 ^ n + 4 ^ n : ℚ) / 2 := by simp only [A196836.P3333352529070358036.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A196836, hz, SequenceProof.roundAway_intCast]
