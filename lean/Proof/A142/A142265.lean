import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142265 lists the primes congruent to 16 mod 43. -/
theorem A142265.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142265 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 16) (n - 1) : ℤ) := by
  simp only [A142265, A142265.P12741568292378737804.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142265.P12741568292378737804.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142265.P12741568292378737804.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142265.P12741568292378737804.f1, SequenceMachineLib.memo_apply]; omega⟩) _
