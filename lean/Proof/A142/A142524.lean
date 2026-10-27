import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142524 lists the primes congruent to 35 mod 52. -/
theorem A142524.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142524 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 35) (n - 1) : ℤ) := by
  simp only [A142524, A142524.P6988949787904789520.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142524.P6988949787904789520.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142524.P6988949787904789520.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 52, by simp only [A142524.P6988949787904789520.f1, SequenceMachineLib.memo_apply]; omega⟩) _
