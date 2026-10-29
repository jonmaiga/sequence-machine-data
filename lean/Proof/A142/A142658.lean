import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142658 lists the primes congruent to 41 mod 56. -/
theorem A142658.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142658 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 41) (n - 1) : ℤ) := by
  simp only [A142658, A142658.P6825828313435678284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142658.P6825828313435678284.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142658.P6825828313435678284.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 56, by simp only [A142658.P6825828313435678284.f1, SequenceMachineLib.memo_apply]; omega⟩) _
