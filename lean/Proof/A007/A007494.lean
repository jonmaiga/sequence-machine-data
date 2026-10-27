import Prog.A007.A0074
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A007494 lists the numbers whose residue mod 3 is one of 0, 2. -/
theorem A007494.anchor (n : ℕ) :
    A007494 n = (Nat.nth (fun k => k % 3 ∈ ({0, 2} : Finset ℕ)) (n) : ℤ) := by
  have cf : ∀ n, A007494.P3893619610466939533.a n = ((3 * (n / 2) + [0, 2].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A007494.P3893619610466939533.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.ceil_div_of_eq ((n : ℚ) : ℚ) ((n : ℤ) : ℤ) 2 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 2 ∧ n = 2 * q + r :=
      ⟨n / 2, n % 2, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 2).symm⟩
    rcases (by omega : r = 0 ∨ r = 1) with rfl | rfl
    · rw [show (2 * q + 0) % 2 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (2 * q + 1) % 2 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 3 ∈ ({0, 2} : Finset ℕ)) = (fun k => k % 3 ∈ [0, 2]) by funext k; simp,
    SequenceProof.nth_mod_mem 3 2 [0, 2] rfl (by decide) (by decide) (by norm_num)]
  simp only [A007494, cf]
