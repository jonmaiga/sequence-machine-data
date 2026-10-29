import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142360 lists the primes congruent to 9 mod 47. -/
theorem A142360.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142360 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 9) (n - 1) : ℤ) := by
  simp only [A142360, A142360.P14805223479057948877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142360.P14805223479057948877.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142360.P14805223479057948877.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142360.P14805223479057948877.f1, SequenceMachineLib.memo_apply]; omega⟩) _
