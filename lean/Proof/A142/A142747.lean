import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142747 lists the primes congruent to 20 mod 59. -/
theorem A142747.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142747 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 20) (n - 1) : ℤ) := by
  simp only [A142747, A142747.P10055237668845761381.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142747.P10055237668845761381.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142747.P10055237668845761381.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142747.P10055237668845761381.f1, SequenceMachineLib.memo_apply]; omega⟩) _
