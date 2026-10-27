import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142214 lists the primes congruent to 17 mod 41. -/
theorem A142214.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142214 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 17) (n - 1) : ℤ) := by
  simp only [A142214, A142214.P4370632602972241411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142214.P4370632602972241411.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142214.P4370632602972241411.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142214.P4370632602972241411.f1, SequenceMachineLib.memo_apply]; omega⟩) _
