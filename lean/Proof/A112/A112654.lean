import Prog.A112.A1126
import Proof.Lib.ModMem

/-- A112654: Numbers k such that k^3 == k (mod 11). -/
theorem A112654.anchor (n : ℕ) (hn : 1 ≤ n) :
    A112654 n = (Nat.nth (fun k : ℕ => k ^ 3 ≡ k [MOD 11]) (n - 1) : ℤ) := by
  have cf : ∀ n, A112654.P3817290245725075535.a n = ((11 * (n / 3) + [0, 1, 10].getD (n % 3) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A112654.P3817290245725075535.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A112654.P3817290245725075535.a] at h1 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h1, h3, h4]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show m % 3 = 0 by omega, show (m + 1) % 3 = 1 by omega, show (m + 3) % 3 = 0 by omega, show (m + 4) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 1 by omega, show (m + 1) % 3 = 2 by omega, show (m + 3) % 3 = 1 by omega, show (m + 4) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 2 by omega, show (m + 1) % 3 = 0 by omega, show (m + 3) % 3 = 2 by omega, show (m + 4) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hp : (fun k : ℕ => k ^ 3 ≡ k [MOD 11]) = (fun k => k % 11 ∈ [0, 1, 10]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 11 by norm_num)
    generalize k % 11 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 11 3 [0, 1, 10] rfl (by decide) (by decide) (by norm_num)]
  simp only [A112654, cf]
