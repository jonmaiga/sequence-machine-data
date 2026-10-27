import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142814 lists the primes congruent to 16 mod 61. -/
theorem A142814.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142814 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 16) (n - 1) : ℤ) := by
  simp only [A142814, A142814.P8653414959725100491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142814.P8653414959725100491.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142814.P8653414959725100491.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142814.P8653414959725100491.f1, SequenceMachineLib.memo_apply]; omega⟩) _
