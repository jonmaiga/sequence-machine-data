import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142780 lists the primes congruent to 53 mod 59. -/
theorem A142780.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142780 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 53) (n - 1) : ℤ) := by
  simp only [A142780, A142780.P6926582499104683057.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142780.P6926582499104683057.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142780.P6926582499104683057.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 59, by simp only [A142780.P6926582499104683057.f1, SequenceMachineLib.memo_apply]; omega⟩) _
