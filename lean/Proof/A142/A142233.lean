import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142233 lists the primes congruent to 36 mod 41. -/
theorem A142233.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142233 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 36) (n - 1) : ℤ) := by
  simp only [A142233, A142233.P1848949060217978561.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142233.P1848949060217978561.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142233.P1848949060217978561.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 41, by simp only [A142233.P1848949060217978561.f1, SequenceMachineLib.memo_apply]; omega⟩) _
