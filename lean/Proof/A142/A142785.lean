import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142785 lists the primes congruent to 58 mod 59. -/
theorem A142785.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142785 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 58) (n - 1) : ℤ) := by
  simp only [A142785, A142785.P5407688993661693736.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 58 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142785.P5407688993661693736.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142785.P5407688993661693736.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 59, by simp only [A142785.P5407688993661693736.f1, SequenceMachineLib.memo_apply]; omega⟩) _
