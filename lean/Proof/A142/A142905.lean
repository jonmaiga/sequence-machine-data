import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142905 lists the primes congruent to 29 mod 63. -/
theorem A142905.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142905 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 29) (n - 1) : ℤ) := by
  simp only [A142905, A142905.P15361432978310743157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142905.P15361432978310743157.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142905.P15361432978310743157.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142905.P15361432978310743157.f1, SequenceMachineLib.memo_apply]; omega⟩) _
