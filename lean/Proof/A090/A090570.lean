import Prog.A090.A0905
import Proof.Lib.ModMem

/-- A090570 lists the numbers whose residue mod 9 is one of 0, 1. -/
theorem A090570.anchor (n : ℕ) (hn : 1 ≤ n) :
    A090570 n = (Nat.nth (fun k => k % 9 ∈ ({0, 1} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A090570.P6286571447887883360.a n = ((9 * (n / 2) + [0, 1].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A090570.P6286571447887883360.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A090570.P6286571447887883360.a] at h1 ⊢
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
  rw [show (fun k => k % 9 ∈ ({0, 1} : Finset ℕ)) = (fun k => k % 9 ∈ [0, 1]) by funext k; simp,
    SequenceProof.nth_mod_mem 9 2 [0, 1] rfl (by decide) (by decide) (by norm_num)]
  simp only [A090570, cf]
