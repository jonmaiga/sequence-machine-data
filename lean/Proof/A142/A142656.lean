import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142656 lists the primes congruent to 37 mod 56. -/
theorem A142656.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142656 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 37) (n - 1) : ℤ) := by
  simp only [A142656, A142656.P17904840674767143491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142656.P17904840674767143491.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142656.P17904840674767143491.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 56, by simp only [A142656.P17904840674767143491.f1, SequenceMachineLib.memo_apply]; omega⟩) _
