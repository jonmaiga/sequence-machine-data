import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142765 lists the primes congruent to 38 mod 59. -/
theorem A142765.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142765 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 38) (n - 1) : ℤ) := by
  simp only [A142765, A142765.P15446213454933447653.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142765.P15446213454933447653.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142765.P15446213454933447653.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 59, by simp only [A142765.P15446213454933447653.f1, SequenceMachineLib.memo_apply]; omega⟩) _
