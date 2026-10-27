import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142510 lists the primes congruent to 5 mod 52. -/
theorem A142510.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142510 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 5) (n - 1) : ℤ) := by
  simp only [A142510, A142510.P15793601626251418668.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142510.P15793601626251418668.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142510.P15793601626251418668.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142510.P15793601626251418668.f1, SequenceMachineLib.memo_apply]; omega⟩) _
