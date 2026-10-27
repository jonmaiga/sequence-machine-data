import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142738 lists the primes congruent to 11 mod 59. -/
theorem A142738.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142738 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 11) (n - 1) : ℤ) := by
  simp only [A142738, A142738.P9246638459395651207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142738.P9246638459395651207.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142738.P9246638459395651207.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142738.P9246638459395651207.f1, SequenceMachineLib.memo_apply]; omega⟩) _
