import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142649 lists the primes congruent to 19 mod 56. -/
theorem A142649.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142649 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 19) (n - 1) : ℤ) := by
  simp only [A142649, A142649.P7234577891940818395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142649.P7234577891940818395.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142649.P7234577891940818395.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142649.P7234577891940818395.f1, SequenceMachineLib.memo_apply]; omega⟩) _
