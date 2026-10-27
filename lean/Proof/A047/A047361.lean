import Prog.A047.A0473
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A047361 lists the numbers whose residue mod 7 is one of 0, 1, 2, 3. -/
theorem A047361.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047361 n = (Nat.nth (fun k => k % 7 ∈ ({0, 1, 2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047361.P13751878751282116356.a n = ((7 * (n / 4) + [0, 1, 2, 3].getD (n % 4) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A047361.P13751878751282116356.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.floor_div_of_eq ((n : ℚ) : ℚ) ((n : ℤ) : ℤ) 4 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 4 ∧ n = 4 * q + r :=
      ⟨n / 4, n % 4, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 4).symm⟩
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
  rw [show (fun k => k % 7 ∈ ({0, 1, 2, 3} : Finset ℕ)) = (fun k => k % 7 ∈ [0, 1, 2, 3]) by funext k; simp,
    SequenceProof.nth_mod_mem 7 4 [0, 1, 2, 3] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047361, cf]
