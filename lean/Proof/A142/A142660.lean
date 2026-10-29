import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142660 lists the primes congruent to 45 mod 56. -/
theorem A142660.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142660 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 45) (n - 1) : ℤ) := by
  simp only [A142660, A142660.P15413522584948336905.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142660.P15413522584948336905.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142660.P15413522584948336905.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 56, by simp only [A142660.P15413522584948336905.f1, SequenceMachineLib.memo_apply]; omega⟩) _
