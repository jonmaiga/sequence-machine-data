import Prog.A093.A0938
import Proof.Lib.PrimesMod

/-- A093838 lists the primes congruent to 1 mod 36. -/
theorem A093838.anchor (n : ℕ) (hn : 1 ≤ n) :
    A093838 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 1) (n - 1) : ℤ) := by
  simp only [A093838, A093838.P7290419225933873605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 36 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A093838.P7290419225933873605.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A093838.P7290419225933873605.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 36, by simp only [A093838.P7290419225933873605.f1, SequenceMachineLib.memo_apply]; omega⟩) _
