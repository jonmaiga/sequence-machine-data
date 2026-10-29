import Prog.A155.A1550
import Proof.Lib.ModMem

/-- A155086: Numbers k such that k^2 == -1 (mod 13). -/
theorem A155086.anchor (n : ℕ) (hn : 1 ≤ n) :
    A155086 n = (Nat.nth (fun k : ℕ => (k : ℤ) ^ 2 ≡ -1 [ZMOD 13]) (n - 1) : ℤ) := by
  have cf : ∀ n, A155086.P10332282708764724611.a n = 13 * (n / 2) + [5, 8].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A155086.P10332282708764724611.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A155086.P10332282708764724611.a] at h2 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
        rw [h2]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hp : (fun k : ℕ => (k : ℤ) ^ 2 ≡ -1 [ZMOD 13]) = (fun k => k % 13 ∈ [5, 8]) := by
    funext k
    apply propext
    rw [Int.ModEq, show (-1 : ℤ) % 13 = 12 by rfl]
    have e : (k : ℤ) ^ 2 % 13 = 12 ↔ k ^ 2 % 13 = 12 := by norm_cast
    rw [e, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 13 by norm_num)
    generalize k % 13 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 13 2 [5, 8] rfl (by decide) (by decide) (by norm_num)]
  simp only [A155086, cf]
