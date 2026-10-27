import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142752 lists the primes congruent to 25 mod 59. -/
theorem A142752.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142752 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 25) (n - 1) : ℤ) := by
  simp only [A142752, A142752.P1738315188731270159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142752.P1738315188731270159.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142752.P1738315188731270159.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142752.P1738315188731270159.f1, SequenceMachineLib.memo_apply]; omega⟩) _
