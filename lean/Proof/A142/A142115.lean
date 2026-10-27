import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142115 lists the primes congruent to 6 mod 37. -/
theorem A142115.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142115 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 6) (n - 1) : ℤ) := by
  simp only [A142115, A142115.P4611097270426880112.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142115.P4611097270426880112.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142115.P4611097270426880112.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142115.P4611097270426880112.f1, SequenceMachineLib.memo_apply]; omega⟩) _
