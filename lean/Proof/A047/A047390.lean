import Prog.A047.A0473
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A047390 lists the numbers whose residue mod 7 is one of 0, 3, 5. -/
theorem A047390.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047390 n = (Nat.nth (fun k => k % 7 ∈ ({0, 3, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047390.P16633236360033250436.a n = ((7 * (n / 3) + [0, 3, 5].getD (n % 3) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A047390.P16633236360033250436.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.ceil_div_of_eq ((n : ℚ) : ℚ) ((n : ℤ) : ℤ) 3 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 3 ∧ n = 3 * q + r :=
      ⟨n / 3, n % 3, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 3).symm⟩
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
  rw [show (fun k => k % 7 ∈ ({0, 3, 5} : Finset ℕ)) = (fun k => k % 7 ∈ [0, 3, 5]) by funext k; simp,
    SequenceProof.nth_mod_mem 7 3 [0, 3, 5] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047390, cf]
