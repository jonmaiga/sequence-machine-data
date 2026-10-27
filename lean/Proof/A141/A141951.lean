import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141951 lists the primes congruent to 5 mod 27. -/
theorem A141951.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141951 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 5) (n - 1) : ℤ) := by
  simp only [A141951, A141951.P2426421903688238257.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141951.P2426421903688238257.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141951.P2426421903688238257.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141951.P2426421903688238257.f1, SequenceMachineLib.memo_apply]; omega⟩) _
