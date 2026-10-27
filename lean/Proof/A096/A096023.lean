import Prog.A096.A0960
import Proof.Lib.ModMem

/-- A096023 lists the numbers whose residue mod 420 is one of 63, 123, 183, 243, 303, 363. -/
theorem A096023.anchor (n : ℕ) (hn : 1 ≤ n) :
    A096023 n = (Nat.nth (fun k => k % 420 ∈ ({63, 123, 183, 243, 303, 363} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A096023.P1085591677468782510.a n = 420 * (n / 6) + [63, 123, 183, 243, 303, 363].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A096023.P1085591677468782510.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h6 := ih m (by omega)
        simp only [A096023.P1085591677468782510.a] at h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 6 = m by omega, show m < m + 6 by omega, ↓reduceIte]
        rw [h6]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 6) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 6) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 6) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 6) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 6) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 6) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 420 ∈ ({63, 123, 183, 243, 303, 363} : Finset ℕ)) = (fun k => k % 420 ∈ [63, 123, 183, 243, 303, 363]) by funext k; simp,
    SequenceProof.nth_mod_mem 420 6 [63, 123, 183, 243, 303, 363] rfl (by decide) (by decide) (by norm_num)]
  simp only [A096023, cf]
