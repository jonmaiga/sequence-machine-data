import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142314 lists the primes congruent to 4 mod 45. -/
theorem A142314.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142314 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 4) (n - 1) : ℤ) := by
  simp only [A142314, A142314.P6050126753474725159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142314.P6050126753474725159.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142314.P6050126753474725159.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142314.P6050126753474725159.f1, SequenceMachineLib.memo_apply]; omega⟩) _
