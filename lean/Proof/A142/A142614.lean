import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142614 lists the primes congruent to 18 mod 55. -/
theorem A142614.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142614 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 18) (n - 1) : ℤ) := by
  simp only [A142614, A142614.P6871385850968373089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142614.P6871385850968373089.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142614.P6871385850968373089.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142614.P6871385850968373089.f1, SequenceMachineLib.memo_apply]; omega⟩) _
