import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142827 lists the primes congruent to 29 mod 61. -/
theorem A142827.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142827 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 29) (n - 1) : ℤ) := by
  simp only [A142827, A142827.P9610161280895861040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142827.P9610161280895861040.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142827.P9610161280895861040.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142827.P9610161280895861040.f1, SequenceMachineLib.memo_apply]; omega⟩) _
