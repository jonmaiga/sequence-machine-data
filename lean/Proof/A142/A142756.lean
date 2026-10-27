import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142756 lists the primes congruent to 29 mod 59. -/
theorem A142756.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142756 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 29) (n - 1) : ℤ) := by
  simp only [A142756, A142756.P13651941834180047484.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142756.P13651941834180047484.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142756.P13651941834180047484.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142756.P13651941834180047484.f1, SequenceMachineLib.memo_apply]; omega⟩) _
