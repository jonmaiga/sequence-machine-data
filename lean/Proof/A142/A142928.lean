import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142928 lists the primes congruent to 7 mod 64. -/
theorem A142928.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142928 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 7) (n - 1) : ℤ) := by
  simp only [A142928, A142928.P10249613510516575221.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142928.P10249613510516575221.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142928.P10249613510516575221.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142928.P10249613510516575221.f1, SequenceMachineLib.memo_apply]; omega⟩) _
