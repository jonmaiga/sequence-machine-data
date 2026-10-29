import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142616 lists the primes congruent to 21 mod 55. -/
theorem A142616.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142616 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 21) (n - 1) : ℤ) := by
  simp only [A142616, A142616.P12502283512490019217.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142616.P12502283512490019217.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142616.P12502283512490019217.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142616.P12502283512490019217.f1, SequenceMachineLib.memo_apply]; omega⟩) _
