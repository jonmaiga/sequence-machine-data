import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142608 lists the primes congruent to 9 mod 55. -/
theorem A142608.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142608 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 9) (n - 1) : ℤ) := by
  simp only [A142608, A142608.P8500415441779693116.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142608.P8500415441779693116.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142608.P8500415441779693116.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142608.P8500415441779693116.f1, SequenceMachineLib.memo_apply]; omega⟩) _
