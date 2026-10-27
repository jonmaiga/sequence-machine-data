import Prog.A049.A0493

/-- A049347 is periodic with period 3, repeating 1, -1, 0. -/
theorem A049347.anchor (n : ℕ) :
    A049347 n = [1, -1, 0].getD (n % 3) 0 := by
  have cf : ∀ n, A049347.P9996747395155426839.a n = [1, -1, 0].getD (n % 3) 0 := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 3 ∧ n = 3 * q + r :=
      ⟨n / 3, n % 3, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 3).symm⟩
    simp only [A049347.P9996747395155426839.a, SequenceMachineLib.memo_apply]
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
  simp only [A049347, cf]
