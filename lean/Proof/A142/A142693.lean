import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142693 lists the primes congruent to 46 mod 57. -/
theorem A142693.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142693 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 46) (n - 1) : ℤ) := by
  simp only [A142693, A142693.P8028051101697863563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142693.P8028051101697863563.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142693.P8028051101697863563.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 57, by simp only [A142693.P8028051101697863563.f1, SequenceMachineLib.memo_apply]; omega⟩) _
