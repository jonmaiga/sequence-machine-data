import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142766 lists the primes congruent to 39 mod 59. -/
theorem A142766.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142766 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 39) (n - 1) : ℤ) := by
  simp only [A142766, A142766.P15834970343129611408.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142766.P15834970343129611408.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142766.P15834970343129611408.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 20) / 59, by simp only [A142766.P15834970343129611408.f1, SequenceMachineLib.memo_apply]; omega⟩) _
