import Prog.A132.A1324

/-- A132429 is periodic with period 4, repeating 3, 1, -1, -3. -/
theorem A132429.anchor (n : ℕ) :
    A132429 n = [3, 1, -1, -3].getD (n % 4) 0 := by
  have cf : ∀ n, A132429.P8089814914253259062.a n = [3, 1, -1, -3].getD (n % 4) 0 := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 4 ∧ n = 4 * q + r :=
      ⟨n / 4, n % 4, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 4).symm⟩
    simp only [A132429.P8089814914253259062.a, SequenceMachineLib.memo_apply]
    rcases (by omega : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3) with rfl | rfl | rfl | rfl
    · rw [show (4 * q + 0) % 4 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (4 * q + 1) % 4 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (4 * q + 2) % 4 = 2 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (4 * q + 3) % 4 = 3 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  simp only [A132429, cf]
