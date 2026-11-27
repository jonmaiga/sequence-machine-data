import Prog.A174.A1748
import Proof.Lib.Integral

/-- A174836: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A174836.anchor (n : ℕ) :
    (A174836 n : ℚ) = 1 + (((6 * n : ℤ) - 1) * (2 ^ n : ℤ) + (-1) ^ n : ℚ) / 3 := by
  have hr : ∀ m, A174836.P7149437190933195905.a (m + 4) = (4 : ℚ) * A174836.P7149437190933195905.a (m + 3) + (-3 : ℚ) * A174836.P7149437190933195905.a (m + 2) + (-4 : ℚ) * A174836.P7149437190933195905.a (m + 1) + (4 : ℚ) * A174836.P7149437190933195905.a m := by
    intro m
    simp only [A174836.P7149437190933195905.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A174836.P7149437190933195905.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A174836.P7149437190933195905.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A174836.P7149437190933195905.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A174836.P7149437190933195905.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨46, by norm_num [A174836.P7149437190933195905.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -3 * z2 + -4 * z1 + 4 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A174836.P7149437190933195905.a n = 1 + (((6 * n : ℤ) - 1) * (2 ^ n : ℤ) + (-1) ^ n : ℚ) / 3 := by simp only [A174836.P7149437190933195905.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A174836, hz, SequenceProof.roundAway_intCast]
