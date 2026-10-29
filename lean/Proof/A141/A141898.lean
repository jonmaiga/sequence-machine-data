import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141898 lists the primes congruent to 20 mod 21. -/
theorem A141898.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141898 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 20) (n - 1) : ℤ) := by
  simp only [A141898, A141898.P13901838028498291444.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 21 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141898.P13901838028498291444.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141898.P13901838028498291444.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 21, by simp only [A141898.P13901838028498291444.f1, SequenceMachineLib.memo_apply]; omega⟩) _
