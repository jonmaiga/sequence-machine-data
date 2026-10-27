import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142387 lists the primes congruent to 36 mod 47. -/
theorem A142387.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142387 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 36) (n - 1) : ℤ) := by
  simp only [A142387, A142387.P16442262103069469868.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142387.P16442262103069469868.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142387.P16442262103069469868.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 47, by simp only [A142387.P16442262103069469868.f1, SequenceMachineLib.memo_apply]; omega⟩) _
