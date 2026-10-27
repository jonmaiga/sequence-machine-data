import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142384 lists the primes congruent to 33 mod 47. -/
theorem A142384.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142384 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 33) (n - 1) : ℤ) := by
  simp only [A142384, A142384.P5270389051962731911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142384.P5270389051962731911.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142384.P5270389051962731911.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142384.P5270389051962731911.f1, SequenceMachineLib.memo_apply]; omega⟩) _
