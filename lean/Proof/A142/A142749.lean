import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142749 lists the primes congruent to 22 mod 59. -/
theorem A142749.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142749 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 22) (n - 1) : ℤ) := by
  simp only [A142749, A142749.P11019905987343841115.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142749.P11019905987343841115.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142749.P11019905987343841115.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142749.P11019905987343841115.f1, SequenceMachineLib.memo_apply]; omega⟩) _
