import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142552 lists the primes congruent to 22 mod 53. -/
theorem A142552.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142552 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 22) (n - 1) : ℤ) := by
  simp only [A142552, A142552.P10742857382744305642.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142552.P10742857382744305642.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142552.P10742857382744305642.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 31) / 53, by simp only [A142552.P10742857382744305642.f1, SequenceMachineLib.memo_apply]; omega⟩) _
