import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142855 lists the primes congruent to 57 mod 61. -/
theorem A142855.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142855 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 57) (n - 1) : ℤ) := by
  simp only [A142855, A142855.P4280594476695647565.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 57 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142855.P4280594476695647565.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142855.P4280594476695647565.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 61, by simp only [A142855.P4280594476695647565.f1, SequenceMachineLib.memo_apply]; omega⟩) _
