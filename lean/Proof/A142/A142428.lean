import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142428 lists the primes congruent to 17 mod 49. -/
theorem A142428.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142428 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 17) (n - 1) : ℤ) := by
  simp only [A142428, A142428.P11246402185100572239.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142428.P11246402185100572239.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142428.P11246402185100572239.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142428.P11246402185100572239.f1, SequenceMachineLib.memo_apply]; omega⟩) _
