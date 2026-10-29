import Prog.A047.A0475
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A047595 lists the numbers whose residue mod 8 is one of 0, 1, 2, 3, 4, 5, 7. -/
theorem A047595.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047595 n = (Nat.nth (fun k => k % 8 ∈ ({0, 1, 2, 3, 4, 5, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047595.P12241637956285316643.a n = ((8 * (n / 7) + [0, 1, 2, 3, 4, 5, 7].getD (n % 7) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A047595.P12241637956285316643.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.floor_div_of_eq ((n + 1 : ℚ) : ℚ) ((n + 1 : ℤ) : ℤ) 7 (by push_cast; ring)]
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
  rw [show (fun k => k % 8 ∈ ({0, 1, 2, 3, 4, 5, 7} : Finset ℕ)) = (fun k => k % 8 ∈ [0, 1, 2, 3, 4, 5, 7]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 7 [0, 1, 2, 3, 4, 5, 7] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047595, cf]
