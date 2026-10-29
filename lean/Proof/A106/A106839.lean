import Prog.A106.A1068
import Proof.Lib.ModMem

/-- A106839 lists the numbers congruent to 11 mod 16. -/
theorem A106839.anchor (n : ℕ) :
    A106839 n = (Nat.nth (fun k => k % 16 ∈ ({11} : Finset ℕ)) (n) : ℤ) := by
  have cf : ∀ n, A106839.P12314086640576211792.a n = 16 * (n / 1) + [11].getD (n % 1) 0 := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 1 ∧ n = 1 * q + r :=
      ⟨n / 1, n % 1, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 1).symm⟩
    simp only [A106839.P12314086640576211792.a, SequenceMachineLib.memo_apply]
    obtain rfl : r = 0 := by omega
    rw [show (1 * q + 0) % 1 = 0 by omega]
    all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
    all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 16 ∈ ({11} : Finset ℕ)) = (fun k => k % 16 ∈ [11]) by funext k; simp,
    SequenceProof.nth_mod_mem 16 1 [11] rfl (by decide) (by decide) (by norm_num)]
  simp only [A106839, cf]
