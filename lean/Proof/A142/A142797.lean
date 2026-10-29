import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142797 lists the primes congruent to 49 mod 60. -/
theorem A142797.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142797 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 49) (n - 1) : ℤ) := by
  simp only [A142797, A142797.P10393761466021008869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 60 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142797.P10393761466021008869.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142797.P10393761466021008869.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 60, by simp only [A142797.P10393761466021008869.f1, SequenceMachineLib.memo_apply]; omega⟩) _
