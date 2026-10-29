import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142159 lists the primes congruent to 1 mod 39. -/
theorem A142159.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142159 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 1) (n - 1) : ℤ) := by
  simp only [A142159, A142159.P13823873694496372423.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142159.P13823873694496372423.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142159.P13823873694496372423.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142159.P13823873694496372423.f1, SequenceMachineLib.memo_apply]; omega⟩) _
