import Prog.A164.A1641
import Proof.Lib.ModMem

/-- A164131: Numbers k such that k^2 == 2 (mod 31). -/
theorem A164131.anchor (n : ℕ) (hn : 1 ≤ n) :
    A164131 n = (Nat.nth (fun k : ℕ => k ^ 2 ≡ 2 [MOD 31]) (n - 1) : ℤ) := by
  have cf : ∀ n, A164131.P5745600518702844297.a n = ((31 * (n / 2) + [8, 23].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A164131.P5745600518702844297.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A164131.P5745600518702844297.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 1) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 1) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hp : (fun k : ℕ => k ^ 2 ≡ 2 [MOD 31]) = (fun k => k % 31 ∈ [8, 23]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 31 by norm_num)
    generalize k % 31 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 31 2 [8, 23] rfl (by decide) (by decide) (by norm_num)]
  simp only [A164131, cf]
