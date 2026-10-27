import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142670 lists the primes congruent to 8 mod 57. -/
theorem A142670.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142670 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 8) (n - 1) : ℤ) := by
  simp only [A142670, A142670.P157178037678356003.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142670.P157178037678356003.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142670.P157178037678356003.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142670.P157178037678356003.f1, SequenceMachineLib.memo_apply]; omega⟩) _
