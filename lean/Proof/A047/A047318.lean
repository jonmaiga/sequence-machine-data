import Prog.A047.A0473
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A047318 lists the numbers whose residue mod 7 is one of 0, 1, 2, 4, 5, 6. -/
theorem A047318.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047318 n = (Nat.nth (fun k => k % 7 ∈ ({0, 1, 2, 4, 5, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047318.P2905461629642307148.a n = ((7 * (n / 6) + [0, 1, 2, 4, 5, 6].getD (n % 6) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A047318.P2905461629642307148.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.floor_div_of_eq (((n : ℤ) - 3 : ℚ) : ℚ) (((n : ℤ) - 3 : ℤ) : ℤ) 6 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 6 ∧ n = 6 * q + r :=
      ⟨n / 6, n % 6, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 6).symm⟩
    rcases (by omega : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3 ∨ r = 4 ∨ r = 5) with rfl | rfl | rfl | rfl | rfl | rfl
    · rw [show (6 * q + 0) % 6 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (6 * q + 1) % 6 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (6 * q + 2) % 6 = 2 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (6 * q + 3) % 6 = 3 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (6 * q + 4) % 6 = 4 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (6 * q + 5) % 6 = 5 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 7 ∈ ({0, 1, 2, 4, 5, 6} : Finset ℕ)) = (fun k => k % 7 ∈ [0, 1, 2, 4, 5, 6]) by funext k; simp,
    SequenceProof.nth_mod_mem 7 6 [0, 1, 2, 4, 5, 6] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047318, cf]
