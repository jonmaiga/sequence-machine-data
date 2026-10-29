import Prog.A238.A2384
import Proof.Lib.Floor

/-- A238470 is periodic with period 7, repeating 0, 0, 1, 0, 0, -1, 0. -/
theorem A238470.anchor (n : ℕ) :
    A238470 n = [0, 0, 1, 0, 0, -1, 0].getD (n % 7) 0 := by
  have cf : ∀ n, A238470.P1028853406756724010.a n = [0, 0, 1, 0, 0, -1, 0].getD (n % 7) 0 := by
    intro n
    simp only [A238470.P1028853406756724010.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.floor_div_of_eq ((1 + n : ℚ) : ℚ) ((1 + n : ℤ) : ℤ) 7 (by push_cast; ring),
      SequenceProof.floor_div_of_eq ((2 + n : ℚ) : ℚ) ((2 + n : ℤ) : ℤ) 7 (by push_cast; ring),
      SequenceProof.floor_div_of_eq ((4 + n : ℚ) : ℚ) ((4 + n : ℤ) : ℤ) 7 (by push_cast; ring),
      SequenceProof.floor_div_of_eq ((5 + n : ℚ) : ℚ) ((5 + n : ℤ) : ℤ) 7 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 7 ∧ n = 7 * q + r :=
      ⟨n / 7, n % 7, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 7).symm⟩
    rcases (by omega : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3 ∨ r = 4 ∨ r = 5 ∨ r = 6) with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · rw [show (7 * q + 0) % 7 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (7 * q + 1) % 7 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (7 * q + 2) % 7 = 2 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (7 * q + 3) % 7 = 3 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (7 * q + 4) % 7 = 4 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (7 * q + 5) % 7 = 5 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (7 * q + 6) % 7 = 6 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  simp only [A238470, cf]
