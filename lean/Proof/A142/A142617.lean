import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142617 lists the primes congruent to 23 mod 55. -/
theorem A142617.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142617 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 23) (n - 1) : ℤ) := by
  simp only [A142617, A142617.P10156748784242094338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142617.P10156748784242094338.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142617.P10156748784242094338.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142617.P10156748784242094338.f1, SequenceMachineLib.memo_apply]; omega⟩) _
