import Prog.A132.A1322
import Proof.Lib.PrimesMod

/-- A132232 lists the primes congruent to 11 mod 30. -/
theorem A132232.anchor (n : ℕ) (hn : 1 ≤ n) :
    A132232 n = (Nat.nth (fun p => p.Prime ∧ p % 30 = 11) (n - 1) : ℤ) := by
  simp only [A132232, A132232.P17181212716862781830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 30 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A132232.P17181212716862781830.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A132232.P17181212716862781830.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 30, by simp only [A132232.P17181212716862781830.f1, SequenceMachineLib.memo_apply]; omega⟩) _
