import Prog.A241.A2415
import Proof.Lib.ModMem

/-- A241520: Numbers k such that k^2 == -1 (mod 89). -/
theorem A241520.anchor (n : ℕ) (hn : 1 ≤ n) :
    A241520 n = (Nat.nth (fun k : ℕ => (k : ℤ) ^ 2 ≡ -1 [ZMOD 89]) (n - 1) : ℤ) := by
  have cf : ∀ n, A241520.P13905474125936515436.a n = 89 * (n / 2) + [34, 55].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A241520.P13905474125936515436.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A241520.P13905474125936515436.a] at h2 ⊢
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
  have hp : (fun k : ℕ => (k : ℤ) ^ 2 ≡ -1 [ZMOD 89]) = (fun k => k % 89 ∈ [34, 55]) := by
    funext k
    apply propext
    rw [Int.ModEq, show (-1 : ℤ) % 89 = 88 by rfl]
    have e : (k : ℤ) ^ 2 % 89 = 88 ↔ k ^ 2 % 89 = 88 := by norm_cast
    rw [e, Nat.pow_mod]
    have hk := Nat.mod_lt k (show 0 < 89 by norm_num)
    generalize k % 89 = x at hk ⊢
    revert x
    decide
  rw [hp, SequenceProof.nth_mod_mem 89 2 [34, 55] rfl (by decide) (by decide) (by norm_num)]
  simp only [A241520, cf]
