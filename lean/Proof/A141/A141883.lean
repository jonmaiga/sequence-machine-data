import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141883 lists the primes congruent to 9 mod 20. -/
theorem A141883.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141883 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 9) (n - 1) : ℤ) := by
  simp only [A141883, A141883.P15311569765601762904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 20 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141883.P15311569765601762904.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141883.P15311569765601762904.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 20, by simp only [A141883.P15311569765601762904.f1, SequenceMachineLib.memo_apply]; omega⟩) _
