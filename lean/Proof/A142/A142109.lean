import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142109 lists the primes congruent to 29 mod 36. -/
theorem A142109.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142109 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 29) (n - 1) : ℤ) := by
  simp only [A142109, A142109.P4050136104060084803.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 36 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142109.P4050136104060084803.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142109.P4050136104060084803.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 36, by simp only [A142109.P4050136104060084803.f1, SequenceMachineLib.memo_apply]; omega⟩) _
