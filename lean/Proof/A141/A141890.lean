import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141890 lists the primes congruent to 5 mod 21. -/
theorem A141890.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141890 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 5) (n - 1) : ℤ) := by
  simp only [A141890, A141890.P13150421018336180161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 21 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141890.P13150421018336180161.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141890.P13150421018336180161.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 21, by simp only [A141890.P13150421018336180161.f1, SequenceMachineLib.memo_apply]; omega⟩) _
