import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142681 lists the primes congruent to 26 mod 57. -/
theorem A142681.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142681 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 26) (n - 1) : ℤ) := by
  simp only [A142681, A142681.P4735848263783689997.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142681.P4735848263783689997.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142681.P4735848263783689997.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142681.P4735848263783689997.f1, SequenceMachineLib.memo_apply]; omega⟩) _
