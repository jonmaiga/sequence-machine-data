import Prog.A026.A0264
import Proof.A000.A000120

/-- The binary digit sum of `2k` is that of `k`. -/
private theorem digitSum_two_mul (k : ℕ) : (Nat.digits 2 (2 * k)).sum = (Nat.digits 2 k).sum := by
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · simp
  · rw [Nat.digits_def' (by norm_num) (by omega), List.sum_cons, show 2 * k % 2 = 0 by omega,
      show 2 * k / 2 = k by omega, zero_add]

/-- The binary digit sum of `2k + 1` is one more than that of `k`. -/
private theorem digitSum_two_mul_add_one (k : ℕ) : (Nat.digits 2 (2 * k + 1)).sum = (Nat.digits 2 k).sum + 1 := by
  rw [Nat.digits_def' (by norm_num) (by omega), List.sum_cons, show (2 * k + 1) % 2 = 1 by omega,
    show (2 * k + 1) / 2 = k by omega, add_comm]
private theorem tmod_two (s : ℕ) : (s : ℤ).tmod 2 = ((s % 2 : ℕ) : ℤ) := rfl

/-- The sums of the first `2k` and `2k + 1` terms of the Thue-Morse sequence over `{1, 2}`. -/
private theorem sums (k : ℕ) :
    ∑ i ∈ Finset.range (2 * k), (1 + (Nat.digits 2 i).sum % 2) = 3 * k ∧
    ∑ i ∈ Finset.range (2 * k + 1), (1 + (Nat.digits 2 i).sum % 2) = 3 * k + 1 + (Nat.digits 2 k).sum % 2 := by
  induction k with
  | zero => simp
  | succ k ih =>
    have h1 : ∑ i ∈ Finset.range (2 * (k + 1)), (1 + (Nat.digits 2 i).sum % 2) = 3 * (k + 1) := by
      rw [show 2 * (k + 1) = 2 * k + 1 + 1 by ring, Finset.sum_range_succ, ih.2, digitSum_two_mul_add_one]
      omega
    refine ⟨h1, ?_⟩
    rw [Finset.sum_range_succ, h1, digitSum_two_mul]
    omega

/-- A026430 is the sum of the first `n` terms of the Thue-Morse sequence A001285 over `{1, 2}`, whose `i`-th
term is 1 plus the parity of the binary digit sum of `i`. -/
theorem A026430.anchor (n : ℕ) :
    A026430 n = ((∑ i ∈ Finset.range n, (1 + (Nat.digits 2 i).sum % 2) : ℕ) : ℤ) := by
  simp only [A026430, A026430.P14890685957938381463.a, SequenceMachineLib.memo_apply, A000069,
    A000069.P3917626109476666468.a, Nat.add_sub_cancel, A000120.anchor]
  have hq : ∀ x y : ℤ, ((x : ℚ) + (y : ℚ)) / 2 = ((x + y : ℤ) : ℚ) / ((2 : ℕ) : ℚ) := fun x y => by
    push_cast
    ring
  rw [tmod_two, hq, Rat.floor_intCast_div_natCast]
  obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n
  · rw [(sums k).1, digitSum_two_mul]
    omega
  · rw [(sums k).2, digitSum_two_mul_add_one]
    omega
