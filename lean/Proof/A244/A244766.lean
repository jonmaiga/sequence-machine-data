import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244766 lists the primes whose decimal expansion ends in 23. -/
theorem A244766.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244766 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 23) (n - 1) : ℤ) := by
  simp only [A244766, A244766.P13647786941148802303.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244766.P13647786941148802303.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244766.P13647786941148802303.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A244766.P13647786941148802303.f1, SequenceMachineLib.memo_apply]; omega⟩) _
