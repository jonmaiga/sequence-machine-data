import Prog.A306.A3062
import Proof.Lib.ModMem

/-- A306279 lists the numbers whose residue mod 22 is one of 3, 18. -/
theorem A306279.anchor (n : ℕ) (hn : 1 ≤ n) :
    A306279 n = (Nat.nth (fun k => k % 22 ∈ ({3, 18} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A306279.P15417631850282334460.a n = ((22 * (n / 2) + [3, 18].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 2 ∧ n = 2 * q + r :=
      ⟨n / 2, n % 2, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 2).symm⟩
    simp only [A306279.P15417631850282334460.a, SequenceMachineLib.memo_apply]
    rcases (by omega : r = 0 ∨ r = 1) with rfl | rfl
    · rw [show (2 * q + 0) % 2 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (2 * q + 1) % 2 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 22 ∈ ({3, 18} : Finset ℕ)) = (fun k => k % 22 ∈ [3, 18]) by funext k; simp,
    SequenceProof.nth_mod_mem 22 2 [3, 18] rfl (by decide) (by decide) (by norm_num)]
  simp only [A306279, cf]
