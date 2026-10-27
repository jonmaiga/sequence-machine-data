import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141914 lists the primes congruent to 10 mod 23. -/
theorem A141914.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141914 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 10) (n - 1) : ℤ) := by
  simp only [A141914, A141914.P17407399612554836615.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141914.P17407399612554836615.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141914.P17407399612554836615.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A141914.P17407399612554836615.f1, SequenceMachineLib.memo_apply]; omega⟩) _
