import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142663 lists the primes congruent to 53 mod 56. -/
theorem A142663.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142663 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 53) (n - 1) : ℤ) := by
  simp only [A142663, A142663.P3548312958607287641.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142663.P3548312958607287641.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142663.P3548312958607287641.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 56, by simp only [A142663.P3548312958607287641.f1, SequenceMachineLib.memo_apply]; omega⟩) _
