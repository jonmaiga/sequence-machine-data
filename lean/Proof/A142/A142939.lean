import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142939 lists the primes congruent to 31 mod 64. -/
theorem A142939.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142939 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 31) (n - 1) : ℤ) := by
  simp only [A142939, A142939.P3435509049681326123.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142939.P3435509049681326123.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142939.P3435509049681326123.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142939.P3435509049681326123.f1, SequenceMachineLib.memo_apply]; omega⟩) _
