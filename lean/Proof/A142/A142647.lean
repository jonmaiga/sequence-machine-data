import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142647 lists the primes congruent to 15 mod 56. -/
theorem A142647.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142647 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 15) (n - 1) : ℤ) := by
  simp only [A142647, A142647.P15341668097493183356.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142647.P15341668097493183356.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142647.P15341668097493183356.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142647.P15341668097493183356.f1, SequenceMachineLib.memo_apply]; omega⟩) _
