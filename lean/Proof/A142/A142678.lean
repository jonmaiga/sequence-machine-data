import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142678 lists the primes congruent to 22 mod 57. -/
theorem A142678.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142678 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 22) (n - 1) : ℤ) := by
  simp only [A142678, A142678.P9463500038074292831.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142678.P9463500038074292831.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142678.P9463500038074292831.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142678.P9463500038074292831.f1, SequenceMachineLib.memo_apply]; omega⟩) _
