import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142757 lists the primes congruent to 30 mod 59. -/
theorem A142757.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142757 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 30) (n - 1) : ℤ) := by
  simp only [A142757, A142757.P8841851707877434006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142757.P8841851707877434006.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142757.P8841851707877434006.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 29) / 59, by simp only [A142757.P8841851707877434006.f1, SequenceMachineLib.memo_apply]; omega⟩) _
