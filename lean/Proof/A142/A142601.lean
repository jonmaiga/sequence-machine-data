import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142601 lists the primes congruent to 1 mod 55. -/
theorem A142601.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142601 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 1) (n - 1) : ℤ) := by
  simp only [A142601, A142601.P14347276317672329331.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142601.P14347276317672329331.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142601.P14347276317672329331.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142601.P14347276317672329331.f1, SequenceMachineLib.memo_apply]; omega⟩) _
