import Prog.A047.A0472
import Proof.Lib.ModMem
import Proof.Lib.Floor

/-- A047218 lists the numbers whose residue mod 5 is one of 0, 3. -/
theorem A047218.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047218 n = (Nat.nth (fun k => k % 5 ∈ ({0, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047218.P12362791311827323868.a n = ((5 * (n / 2) + [0, 3].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    simp only [A047218.P12362791311827323868.a, SequenceMachineLib.memo_apply]
    rw [SequenceProof.floor_div_of_eq ((5 * (n + 1) : ℚ) : ℚ) ((5 * (n + 1) : ℤ) : ℤ) 2 (by push_cast; ring)]
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 2 ∧ n = 2 * q + r :=
      ⟨n / 2, n % 2, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 2).symm⟩
    rcases (by omega : r = 0 ∨ r = 1) with rfl | rfl
    · rw [show (2 * q + 0) % 2 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (2 * q + 1) % 2 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 5 ∈ ({0, 3} : Finset ℕ)) = (fun k => k % 5 ∈ [0, 3]) by funext k; simp,
    SequenceProof.nth_mod_mem 5 2 [0, 3] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047218, cf]
