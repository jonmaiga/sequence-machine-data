import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141925 lists the primes congruent to 21 mod 23. -/
theorem A141925.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141925 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 21) (n - 1) : ℤ) := by
  simp only [A141925, A141925.P17128245883167051271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141925.P17128245883167051271.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141925.P17128245883167051271.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 23, by simp only [A141925.P17128245883167051271.f1, SequenceMachineLib.memo_apply]; omega⟩) _
