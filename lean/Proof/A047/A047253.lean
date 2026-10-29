import Prog.A047.A0472
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A047253 lists the numbers whose residue mod 6 is one of 1, 2, 3, 4, 5. -/
theorem A047253.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047253 n = (Nat.nth (fun k => k % 6 ∈ ({1, 2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047253.P308557480160559524.a n = ((6 * (n / 5) + [1, 2, 3, 4, 5].getD (n % 5) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A047253.P308557480160559524.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.floor_div_of_eq ((n + 5 : ℚ) : ℚ) ((n + 5 : ℤ) : ℤ) 5 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 5 ∧ n = 5 * q + r :=
      ⟨n / 5, n % 5, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 5).symm⟩
    rcases (by omega : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3 ∨ r = 4) with rfl | rfl | rfl | rfl | rfl
    · rw [show (5 * q + 0) % 5 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (5 * q + 1) % 5 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (5 * q + 2) % 5 = 2 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (5 * q + 3) % 5 = 3 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (5 * q + 4) % 5 = 4 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 6 ∈ ({1, 2, 3, 4, 5} : Finset ℕ)) = (fun k => k % 6 ∈ [1, 2, 3, 4, 5]) by funext k; simp,
    SequenceProof.nth_mod_mem 6 5 [1, 2, 3, 4, 5] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047253, cf]
