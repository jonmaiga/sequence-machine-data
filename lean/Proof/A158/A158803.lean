import Prog.A158.A1588
import Proof.Lib.ModMem

/-- A158803: Numbers k such that k^2 == 2 (mod 41). -/
theorem A158803.anchor (n : ℕ) (hn : 1 ≤ n) :
    A158803 n = (Nat.nth (fun k : ℕ => k ^ 2 ≡ 2 [MOD 41]) (n - 1) : ℤ) := by
  have cf : ∀ n, A158803.P1606808208767845752.a n = ((41 * (n / 2) + [17, 24].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A158803.P1606808208767845752.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h1 := ih (m + 2) (by omega)
        have h2 := ih (m + 1) (by omega)
        have h3 := ih m (by omega)
        simp only [A158803.P1606808208767845752.a] at h1 h2 h3 ⊢
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
  have hp : (fun k : ℕ => k ^ 2 ≡ 2 [MOD 41]) = (fun k => k % 41 ∈ [17, 24]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 41 by norm_num)
    generalize k % 41 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 41 2 [17, 24] rfl (by decide) (by decide) (by norm_num)]
  simp only [A158803, cf]
