import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142901 lists the primes congruent to 22 mod 63. -/
theorem A142901.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142901 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 22) (n - 1) : ℤ) := by
  simp only [A142901, A142901.P2754317628985178195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142901.P2754317628985178195.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142901.P2754317628985178195.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142901.P2754317628985178195.f1, SequenceMachineLib.memo_apply]; omega⟩) _
