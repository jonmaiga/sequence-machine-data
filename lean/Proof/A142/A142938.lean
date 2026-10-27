import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142938 lists the primes congruent to 29 mod 64. -/
theorem A142938.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142938 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 29) (n - 1) : ℤ) := by
  simp only [A142938, A142938.P7378514744952116202.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142938.P7378514744952116202.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142938.P7378514744952116202.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142938.P7378514744952116202.f1, SequenceMachineLib.memo_apply]; omega⟩) _
