import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142417 lists the primes congruent to 4 mod 49. -/
theorem A142417.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142417 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 4) (n - 1) : ℤ) := by
  simp only [A142417, A142417.P4842907493679080872.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142417.P4842907493679080872.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142417.P4842907493679080872.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142417.P4842907493679080872.f1, SequenceMachineLib.memo_apply]; omega⟩) _
