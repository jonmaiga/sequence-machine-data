import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142850 lists the primes congruent to 52 mod 61. -/
theorem A142850.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142850 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 52) (n - 1) : ℤ) := by
  simp only [A142850, A142850.P13887535984116023840.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 52 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142850.P13887535984116023840.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142850.P13887535984116023840.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 61, by simp only [A142850.P13887535984116023840.f1, SequenceMachineLib.memo_apply]; omega⟩) _
