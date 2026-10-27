import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142276 lists the primes congruent to 27 mod 43. -/
theorem A142276.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142276 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 27) (n - 1) : ℤ) := by
  simp only [A142276, A142276.P4845633353831802166.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142276.P4845633353831802166.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142276.P4845633353831802166.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 43, by simp only [A142276.P4845633353831802166.f1, SequenceMachineLib.memo_apply]; omega⟩) _
