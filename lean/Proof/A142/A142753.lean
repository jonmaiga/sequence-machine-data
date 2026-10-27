import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142753 lists the primes congruent to 26 mod 59. -/
theorem A142753.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142753 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 26) (n - 1) : ℤ) := by
  simp only [A142753, A142753.P2539922441208332439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142753.P2539922441208332439.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142753.P2539922441208332439.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142753.P2539922441208332439.f1, SequenceMachineLib.memo_apply]; omega⟩) _
