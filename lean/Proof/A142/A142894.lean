import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142894 lists the primes congruent to 10 mod 63. -/
theorem A142894.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142894 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 10) (n - 1) : ℤ) := by
  simp only [A142894, A142894.P4870935830498218229.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142894.P4870935830498218229.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142894.P4870935830498218229.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142894.P4870935830498218229.f1, SequenceMachineLib.memo_apply]; omega⟩) _
