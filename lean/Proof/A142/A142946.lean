import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142946 lists the primes congruent to 47 mod 64. -/
theorem A142946.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142946 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 47) (n - 1) : ℤ) := by
  simp only [A142946, A142946.P3067631128433133171.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142946.P3067631128433133171.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142946.P3067631128433133171.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142946.P3067631128433133171.f1, SequenceMachineLib.memo_apply]; omega⟩) _
