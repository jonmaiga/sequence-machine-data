import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142411 lists the primes congruent to 41 mod 48. -/
theorem A142411.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142411 n = (Nat.nth (fun p => p.Prime ∧ p % 48 = 41) (n - 1) : ℤ) := by
  simp only [A142411, A142411.P17941227972138577087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 48 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142411.P17941227972138577087.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142411.P17941227972138577087.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 48, by simp only [A142411.P17941227972138577087.f1, SequenceMachineLib.memo_apply]; omega⟩) _
