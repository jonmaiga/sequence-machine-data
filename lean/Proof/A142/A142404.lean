import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142404 lists the primes congruent to 19 mod 48. -/
theorem A142404.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142404 n = (Nat.nth (fun p => p.Prime ∧ p % 48 = 19) (n - 1) : ℤ) := by
  simp only [A142404, A142404.P3151570573728460328.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 48 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142404.P3151570573728460328.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142404.P3151570573728460328.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 48, by simp only [A142404.P3151570573728460328.f1, SequenceMachineLib.memo_apply]; omega⟩) _
