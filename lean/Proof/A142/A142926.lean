import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142926 lists the primes congruent to 3 mod 64. -/
theorem A142926.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142926 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 3) (n - 1) : ℤ) := by
  simp only [A142926, A142926.P7016555721576362833.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142926.P7016555721576362833.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142926.P7016555721576362833.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142926.P7016555721576362833.f1, SequenceMachineLib.memo_apply]; omega⟩) _
