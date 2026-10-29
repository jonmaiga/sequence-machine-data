import Prog.A082.A0823
import Proof.Lib.ModMem

/-- A082369 lists the numbers congruent to 13 mod 30. -/
theorem A082369.anchor (n : ℕ) (hn : 1 ≤ n) :
    A082369 n = (Nat.nth (fun k => k % 30 ∈ ({13} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A082369.P8225602124362448131.a n = 30 * (n / 1) + [13].getD (n % 1) 0 := by
    intro n
    obtain ⟨q, r, hr, rfl⟩ : ∃ q r, r < 1 ∧ n = 1 * q + r :=
      ⟨n / 1, n % 1, Nat.mod_lt _ (by norm_num), (Nat.div_add_mod n 1).symm⟩
    simp only [A082369.P8225602124362448131.a, SequenceMachineLib.memo_apply]
    obtain rfl : r = 0 := by omega
    rw [show (1 * q + 0) % 1 = 0 by omega]
    all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
    all_goals first | omega | (push_cast; omega) | (simp only [pow_add, pow_mul, pow_one, pow_zero, neg_one_sq, one_pow, mul_one, one_mul, Nat.mul_mod_right, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]; push_cast; omega) | (norm_num [pow_add, pow_mul, Nat.add_mod, Nat.mul_mod, Nat.pow_mod] <;> omega) | decide | norm_num
  rw [show (fun k => k % 30 ∈ ({13} : Finset ℕ)) = (fun k => k % 30 ∈ [13]) by funext k; simp,
    SequenceProof.nth_mod_mem 30 1 [13] rfl (by decide) (by decide) (by norm_num)]
  simp only [A082369, cf]
