import Prog.A056.A0560
import Proof.Lib.ModMem

/-- A056081 lists the numbers whose residue mod 27 is one of 1, 26. -/
theorem A056081.anchor (n : ℕ) (hn : 1 ≤ n) :
    A056081 n = (Nat.nth (fun k => k % 27 ∈ ({1, 26} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A056081.P5164034048466750102.a n = ((27 * (n / 2) + [1, 26].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A056081.P5164034048466750102.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A056081.P5164034048466750102.a] at h1 ⊢
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
  rw [show (fun k => k % 27 ∈ ({1, 26} : Finset ℕ)) = (fun k => k % 27 ∈ [1, 26]) by funext k; simp,
    SequenceProof.nth_mod_mem 27 2 [1, 26] rfl (by decide) (by decide) (by norm_num)]
  simp only [A056081, cf]
