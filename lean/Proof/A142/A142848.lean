import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142848 lists the primes congruent to 50 mod 61. -/
theorem A142848.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142848 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 50) (n - 1) : ℤ) := by
  simp only [A142848, A142848.P16697657649416996143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 50 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142848.P16697657649416996143.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142848.P16697657649416996143.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 61, by simp only [A142848.P16697657649416996143.f1, SequenceMachineLib.memo_apply]; omega⟩) _
