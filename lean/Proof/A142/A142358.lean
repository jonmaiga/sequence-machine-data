import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142358 lists the primes congruent to 7 mod 47. -/
theorem A142358.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142358 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 7) (n - 1) : ℤ) := by
  simp only [A142358, A142358.P8955062867562280245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142358.P8955062867562280245.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142358.P8955062867562280245.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142358.P8955062867562280245.f1, SequenceMachineLib.memo_apply]; omega⟩) _
