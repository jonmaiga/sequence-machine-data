import Prog.A047.A0472
import Proof.Lib.ModMem

/-- A047239 lists the numbers whose residue mod 6 is one of 1, 2. -/
theorem A047239.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047239 n = (Nat.nth (fun k => k % 6 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047239.P15037001494177029940.a n = ((6 * (n / 2) + [1, 2].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 2 ∧ n = 2 * q + r :=
      ⟨n / 2, n % 2, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 2).symm⟩
    simp only [A047239.P15037001494177029940.a, SequenceMachineLib.memo_apply]
    rcases (by omega : r = 0 ∨ r = 1) with rfl | rfl
    · rw [show (2 * q + 0) % 2 = 0 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
    · rw [show (2 * q + 1) % 2 = 1 by omega]
      all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
      all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 6 ∈ ({1, 2} : Finset ℕ)) = (fun k => k % 6 ∈ [1, 2]) by funext k; simp,
    SequenceProof.nth_mod_mem 6 2 [1, 2] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047239, cf]
