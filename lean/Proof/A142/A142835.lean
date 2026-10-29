import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142835 lists the primes congruent to 37 mod 61. -/
theorem A142835.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142835 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 37) (n - 1) : ℤ) := by
  simp only [A142835, A142835.P15901031311554015010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142835.P15901031311554015010.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142835.P15901031311554015010.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 24) / 61, by simp only [A142835.P15901031311554015010.f1, SequenceMachineLib.memo_apply]; omega⟩) _
