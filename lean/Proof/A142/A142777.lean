import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142777 lists the primes congruent to 50 mod 59. -/
theorem A142777.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142777 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 50) (n - 1) : ℤ) := by
  simp only [A142777, A142777.P16332100524234957493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 50 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142777.P16332100524234957493.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142777.P16332100524234957493.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 59, by simp only [A142777.P16332100524234957493.f1, SequenceMachineLib.memo_apply]; omega⟩) _
