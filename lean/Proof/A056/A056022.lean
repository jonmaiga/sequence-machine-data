import Prog.A056.A0560
import Proof.Lib.ModMem

/-- A056022: Numbers k such that k^6 == 1 (mod 7^2). -/
theorem A056022.anchor (n : ℕ) (hn : 1 ≤ n) :
    A056022 n = (Nat.nth (fun k : ℕ => k ^ 6 ≡ 1 [MOD 49]) (n - 1) : ℤ) := by
  have cf : ∀ n, A056022.P5982289393340405747.a n = ((49 * (n / 6) + [1, 18, 19, 30, 31, 48].getD (n % 6) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A056022.P5982289393340405747.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        have h6 := ih (m + 1) (by omega)
        have h7 := ih m (by omega)
        simp only [A056022.P5982289393340405747.a] at h1 h6 h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 1 = m + 6 by omega, show m + 7 - 6 = m + 1 by omega, show m + 7 - 7 = m by omega, show m + 6 < m + 7 by omega, show m + 1 < m + 7 by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h1, h6, h7]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 6) % 6 = 0 by omega, show (m + 7) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 6) % 6 = 1 by omega, show (m + 7) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 6) % 6 = 2 by omega, show (m + 7) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 6) % 6 = 3 by omega, show (m + 7) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 6) % 6 = 4 by omega, show (m + 7) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 6) % 6 = 5 by omega, show (m + 7) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hp : (fun k : ℕ => k ^ 6 ≡ 1 [MOD 49]) = (fun k => k % 49 ∈ [1, 18, 19, 30, 31, 48]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 49 by norm_num)
    generalize k % 49 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 49 6 [1, 18, 19, 30, 31, 48] rfl (by decide) (by decide) (by norm_num)]
  simp only [A056022, cf]
