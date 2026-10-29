import Prog.A000.A0000
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

/-- Each pair `2k, 2k + 1` holds exactly one odious number. -/
private theorem count_two_mul (i : ℕ) : Nat.count (fun k => Odd (Nat.digits 2 k).sum) (2 * i) = i := by
  induction i with
  | zero => simp
  | succ i ih =>
    rw [show 2 * (i + 1) = 2 * i + 1 + 1 by ring, Nat.count_succ, Nat.count_succ, ih]
    simp only [digitSum_two_mul_add_one, digitSum_two_mul]
    by_cases h : Odd (Nat.digits 2 i).sum <;> simp [h, Nat.odd_add_one]

/-- The `i`-th odious number is `2i + 1` minus the parity of the binary digit sum of `i`. -/
private theorem nth_odious (i : ℕ) :
    Nat.nth (fun k => Odd (Nat.digits 2 k).sum) i = 2 * i + 1 - (Nat.digits 2 i).sum % 2 := by
  rcases Nat.even_or_odd (Nat.digits 2 i).sum with h | h
  · have hp : Odd (Nat.digits 2 (2 * i + 1)).sum := by
      rw [digitSum_two_mul_add_one]
      exact Even.add_one h
    have hc : Nat.count (fun k => Odd (Nat.digits 2 k).sum) (2 * i + 1) = i := by
      rw [Nat.count_succ, count_two_mul]
      simp only [digitSum_two_mul, ite_eq_right (Nat.not_odd_iff_even.mpr h), add_zero]
    rw [← hc, Nat.nth_count (p := fun k => Odd (Nat.digits 2 k).sum) hp, hc]
    have := Nat.even_iff.mp h
    omega
  · have hp : Odd (Nat.digits 2 (2 * i)).sum := by
      rw [digitSum_two_mul]
      exact h
    rw [← count_two_mul i, Nat.nth_count (p := fun k => Odd (Nat.digits 2 k).sum) hp, count_two_mul]
    have := Nat.odd_iff.mp h
    omega

/-- A000069 are the odious numbers: an odd number of 1's in their binary expansion. -/
theorem A000069.anchor (n : ℕ) (hn : 1 ≤ n) :
    A000069 n = (Nat.nth (fun k => Odd (Nat.digits 2 k).sum) (n - 1) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000069, A000069.P3917626109476666468.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    A000120.anchor, nth_odious, tmod_two]
  omega
