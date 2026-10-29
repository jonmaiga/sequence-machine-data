import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142116 lists the primes congruent to 7 mod 37. -/
theorem A142116.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142116 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 7) (n - 1) : ℤ) := by
  simp only [A142116, A142116.P5009298204523367086.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142116.P5009298204523367086.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142116.P5009298204523367086.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142116.P5009298204523367086.f1, SequenceMachineLib.memo_apply]; omega⟩) _
