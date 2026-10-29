import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141950 lists the primes congruent to 4 mod 27. -/
theorem A141950.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141950 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 4) (n - 1) : ℤ) := by
  simp only [A141950, A141950.P12713975679317067339.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141950.P12713975679317067339.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141950.P12713975679317067339.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141950.P12713975679317067339.f1, SequenceMachineLib.memo_apply]; omega⟩) _
