import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142541 lists the primes congruent to 11 mod 53. -/
theorem A142541.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142541 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 11) (n - 1) : ℤ) := by
  simp only [A142541, A142541.P7515019460399577004.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142541.P7515019460399577004.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142541.P7515019460399577004.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142541.P7515019460399577004.f1, SequenceMachineLib.memo_apply]; omega⟩) _
