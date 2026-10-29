import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142748 lists the primes congruent to 21 mod 59. -/
theorem A142748.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142748 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 21) (n - 1) : ℤ) := by
  simp only [A142748, A142748.P8158062766394975784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142748.P8158062766394975784.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142748.P8158062766394975784.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142748.P8158062766394975784.f1, SequenceMachineLib.memo_apply]; omega⟩) _
