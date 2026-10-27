import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142414 lists the primes congruent to 1 mod 49. -/
theorem A142414.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142414 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 1) (n - 1) : ℤ) := by
  simp only [A142414, A142414.P4960954613449093379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142414.P4960954613449093379.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142414.P4960954613449093379.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142414.P4960954613449093379.f1, SequenceMachineLib.memo_apply]; omega⟩) _
