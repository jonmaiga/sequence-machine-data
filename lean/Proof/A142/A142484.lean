import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142484 lists the primes congruent to 13 mod 51. -/
theorem A142484.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142484 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 13) (n - 1) : ℤ) := by
  simp only [A142484, A142484.P6216944653823223941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142484.P6216944653823223941.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142484.P6216944653823223941.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142484.P6216944653823223941.f1, SequenceMachineLib.memo_apply]; omega⟩) _
