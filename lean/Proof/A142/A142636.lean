import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142636 lists the primes congruent to 49 mod 55. -/
theorem A142636.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142636 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 49) (n - 1) : ℤ) := by
  simp only [A142636, A142636.P11399722570002845283.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142636.P11399722570002845283.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142636.P11399722570002845283.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 55, by simp only [A142636.P11399722570002845283.f1, SequenceMachineLib.memo_apply]; omega⟩) _
