import Prog.A164.A1641
import Proof.Lib.ModMem

/-- A164135: Numbers k such that k^2 == 2 (mod 47). -/
theorem A164135.anchor (n : ℕ) (hn : 1 ≤ n) :
    A164135 n = (Nat.nth (fun k : ℕ => k ^ 2 ≡ 2 [MOD 47]) (n - 1) : ℤ) := by
  have cf : ∀ n, A164135.P7674206916984917697.a n = ((47 * (n / 2) + [7, 40].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A164135.P7674206916984917697.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h1 := ih (m + 2) (by omega)
        have h2 := ih (m + 1) (by omega)
        have h3 := ih m (by omega)
        simp only [A164135.P7674206916984917697.a] at h1 h2 h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
        rw [h1, h2, h3]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 1) % 2 = 1 by omega, show (m + 2) % 2 = 0 by omega, show (m + 3) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 1) % 2 = 0 by omega, show (m + 2) % 2 = 1 by omega, show (m + 3) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hp : (fun k : ℕ => k ^ 2 ≡ 2 [MOD 47]) = (fun k => k % 47 ∈ [7, 40]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 47 by norm_num)
    generalize k % 47 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 47 2 [7, 40] rfl (by decide) (by decide) (by norm_num)]
  simp only [A164135, cf]
