import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142759 lists the primes congruent to 32 mod 59. -/
theorem A142759.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142759 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 32) (n - 1) : ℤ) := by
  simp only [A142759, A142759.P14858021140169783255.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142759.P14858021140169783255.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142759.P14858021140169783255.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142759.P14858021140169783255.f1, SequenceMachineLib.memo_apply]; omega⟩) _
