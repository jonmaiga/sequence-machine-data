import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142635 lists the primes congruent to 48 mod 55. -/
theorem A142635.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142635 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 48) (n - 1) : ℤ) := by
  simp only [A142635, A142635.P8314393995369655209.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 48 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142635.P8314393995369655209.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142635.P8314393995369655209.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 55, by simp only [A142635.P8314393995369655209.f1, SequenceMachineLib.memo_apply]; omega⟩) _
