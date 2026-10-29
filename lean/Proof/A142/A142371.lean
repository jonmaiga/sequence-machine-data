import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142371 lists the primes congruent to 20 mod 47. -/
theorem A142371.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142371 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 20) (n - 1) : ℤ) := by
  simp only [A142371, A142371.P3074159514887902529.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142371.P3074159514887902529.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142371.P3074159514887902529.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142371.P3074159514887902529.f1, SequenceMachineLib.memo_apply]; omega⟩) _
