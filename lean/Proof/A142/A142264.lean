import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142264 lists the primes congruent to 15 mod 43. -/
theorem A142264.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142264 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 15) (n - 1) : ℤ) := by
  simp only [A142264, A142264.P15507071663444307816.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142264.P15507071663444307816.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142264.P15507071663444307816.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142264.P15507071663444307816.f1, SequenceMachineLib.memo_apply]; omega⟩) _
