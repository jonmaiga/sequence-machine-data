import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142309 lists the primes congruent to 39 mod 44. -/
theorem A142309.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142309 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 39) (n - 1) : ℤ) := by
  simp only [A142309, A142309.P5096015529628759301.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142309.P5096015529628759301.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142309.P5096015529628759301.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 44, by simp only [A142309.P5096015529628759301.f1, SequenceMachineLib.memo_apply]; omega⟩) _
