import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142131 lists the primes congruent to 22 mod 37. -/
theorem A142131.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142131 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 22) (n - 1) : ℤ) := by
  simp only [A142131, A142131.P9998329005519566841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142131.P9998329005519566841.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142131.P9998329005519566841.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 37, by simp only [A142131.P9998329005519566841.f1, SequenceMachineLib.memo_apply]; omega⟩) _
