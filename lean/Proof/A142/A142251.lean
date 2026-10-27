import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142251 lists the primes congruent to 2 mod 43. -/
theorem A142251.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142251 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 2) (n - 1) : ℤ) := by
  simp only [A142251, A142251.P11557941840240172048.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142251.P11557941840240172048.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142251.P11557941840240172048.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142251.P11557941840240172048.f1, SequenceMachineLib.memo_apply]; omega⟩) _
