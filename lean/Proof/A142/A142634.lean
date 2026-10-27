import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142634 lists the primes congruent to 47 mod 55. -/
theorem A142634.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142634 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 47) (n - 1) : ℤ) := by
  simp only [A142634, A142634.P12582050764533160321.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142634.P12582050764533160321.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142634.P12582050764533160321.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 55, by simp only [A142634.P12582050764533160321.f1, SequenceMachineLib.memo_apply]; omega⟩) _
