import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142258 lists the primes congruent to 9 mod 43. -/
theorem A142258.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142258 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 9) (n - 1) : ℤ) := by
  simp only [A142258, A142258.P8628573051359229233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142258.P8628573051359229233.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142258.P8628573051359229233.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142258.P8628573051359229233.f1, SequenceMachineLib.memo_apply]; omega⟩) _
