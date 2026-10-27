import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142739 lists the primes congruent to 12 mod 59. -/
theorem A142739.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142739 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 12) (n - 1) : ℤ) := by
  simp only [A142739, A142739.P18290606999874669249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142739.P18290606999874669249.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142739.P18290606999874669249.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142739.P18290606999874669249.f1, SequenceMachineLib.memo_apply]; omega⟩) _
