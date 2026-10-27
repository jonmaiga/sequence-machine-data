import Prog.A100.A1002
import Proof.Lib.PrimesMod

/-- A100202 lists the primes congruent to 3 mod 13. -/
theorem A100202.anchor (n : ℕ) (hn : 1 ≤ n) :
    A100202 n = (Nat.nth (fun p => p.Prime ∧ p % 13 = 3) (n - 1) : ℤ) := by
  simp only [A100202, A100202.P13240288785830389677.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 13 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A100202.P13240288785830389677.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A100202.P13240288785830389677.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 13, by simp only [A100202.P13240288785830389677.f1, SequenceMachineLib.memo_apply]; omega⟩) _
