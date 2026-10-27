import Prog.A101.A1010

/-- A101000 is periodic with period 3, repeating 0, 1, 3. -/
theorem A101000.anchor (n : ℕ) :
    A101000 n = [0, 1, 3].getD (n % 3) 0 := by
  have cf : ∀ n, A101000.P8769212031880855485.a n = [0, 1, 3].getD (n % 3) 0 := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 3 ∧ n = 3 * q + r :=
      ⟨n / 3, n % 3, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 3).symm⟩
    simp only [A101000.P8769212031880855485.a, SequenceMachineLib.memo_apply]
    rcases (by omega : r = 0 ∨ r = 1 ∨ r = 2) with rfl | rfl | rfl
    · rw [show (3 * q + 0) % 3 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (3 * q + 1) % 3 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (3 * q + 2) % 3 = 2 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  simp only [A101000, cf]
