import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142773 lists the primes congruent to 46 mod 59. -/
theorem A142773.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142773 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 46) (n - 1) : ℤ) := by
  simp only [A142773, A142773.P11628579780795049656.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142773.P11628579780795049656.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142773.P11628579780795049656.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 59, by simp only [A142773.P11628579780795049656.f1, SequenceMachineLib.memo_apply]; omega⟩) _
