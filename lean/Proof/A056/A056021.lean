import Prog.A056.A0560
import Proof.Lib.ModMem

/-- A056021: Numbers k such that k^4 == 1 (mod 5^2). -/
theorem A056021.anchor (n : ℕ) (hn : 1 ≤ n) :
    A056021 n = (Nat.nth (fun k : ℕ => k ^ 4 ≡ 1 [MOD 25]) (n - 1) : ℤ) := by
  have cf : ∀ n, A056021.P12274417729229104931.a n = ((25 * (n / 4) + [1, 7, 18, 24].getD (n % 4) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A056021.P12274417729229104931.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A056021.P12274417729229104931.a] at h1 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h1, h4, h5]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show m % 4 = 0 by omega, show (m + 1) % 4 = 1 by omega, show (m + 4) % 4 = 0 by omega, show (m + 5) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 1 by omega, show (m + 1) % 4 = 2 by omega, show (m + 4) % 4 = 1 by omega, show (m + 5) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 2 by omega, show (m + 1) % 4 = 3 by omega, show (m + 4) % 4 = 2 by omega, show (m + 5) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 3 by omega, show (m + 1) % 4 = 0 by omega, show (m + 4) % 4 = 3 by omega, show (m + 5) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hp : (fun k : ℕ => k ^ 4 ≡ 1 [MOD 25]) = (fun k => k % 25 ∈ [1, 7, 18, 24]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 25 by norm_num)
    generalize k % 25 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 25 4 [1, 7, 18, 24] rfl (by decide) (by decide) (by norm_num)]
  simp only [A056021, cf]
