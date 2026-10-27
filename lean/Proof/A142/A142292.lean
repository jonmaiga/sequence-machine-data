import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142292 lists the primes congruent to 1 mod 44. -/
theorem A142292.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142292 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 1) (n - 1) : ℤ) := by
  simp only [A142292, A142292.P6431416426378724437.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 44 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142292.P6431416426378724437.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142292.P6431416426378724437.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 44, by simp only [A142292.P6431416426378724437.f1, SequenceMachineLib.memo_apply]; omega⟩) _
