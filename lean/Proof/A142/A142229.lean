import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142229 lists the primes congruent to 32 mod 41. -/
theorem A142229.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142229 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 32) (n - 1) : ℤ) := by
  simp only [A142229, A142229.P16253765682010389413.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142229.P16253765682010389413.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142229.P16253765682010389413.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 41, by simp only [A142229.P16253765682010389413.f1, SequenceMachineLib.memo_apply]; omega⟩) _
