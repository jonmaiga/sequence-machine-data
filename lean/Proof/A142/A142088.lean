import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142088 lists the primes congruent to 18 mod 35. -/
theorem A142088.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142088 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 18) (n - 1) : ℤ) := by
  simp only [A142088, A142088.P16642203838786314292.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142088.P16642203838786314292.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142088.P16642203838786314292.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142088.P16642203838786314292.f1, SequenceMachineLib.memo_apply]; omega⟩) _
