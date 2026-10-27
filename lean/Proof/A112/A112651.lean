import Prog.A112.A1126
import Proof.Lib.ModMem

/-- A112651: Numbers k such that k^2 == k (mod 11). -/
theorem A112651.anchor (n : ℕ) (hn : 1 ≤ n) :
    A112651 n = (Nat.nth (fun k : ℕ => k ^ 2 ≡ k [MOD 11]) (n - 1) : ℤ) := by
  have cf : ∀ n, A112651.P5743016938550411569.a n = ((11 * (n / 2) + [0, 1].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A112651.P5743016938550411569.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A112651.P5743016938550411569.a] at h1 ⊢
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
  have hp : (fun k : ℕ => k ^ 2 ≡ k [MOD 11]) = (fun k => k % 11 ∈ [0, 1]) := by
    funext k
    apply propext
    rw [Nat.ModEq, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 11 by norm_num)
    generalize k % 11 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 11 2 [0, 1] rfl (by decide) (by decide) (by norm_num)]
  simp only [A112651, cf]
