import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142781 lists the primes congruent to 54 mod 59. -/
theorem A142781.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142781 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 54) (n - 1) : ℤ) := by
  simp only [A142781, A142781.P6171479548940273087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 54 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142781.P6171479548940273087.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142781.P6171479548940273087.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 59, by simp only [A142781.P6171479548940273087.f1, SequenceMachineLib.memo_apply]; omega⟩) _
