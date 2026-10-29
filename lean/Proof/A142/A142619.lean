import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142619 lists the primes congruent to 26 mod 55. -/
theorem A142619.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142619 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 26) (n - 1) : ℤ) := by
  simp only [A142619, A142619.P6183626941469914321.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142619.P6183626941469914321.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142619.P6183626941469914321.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 29) / 55, by simp only [A142619.P6183626941469914321.f1, SequenceMachineLib.memo_apply]; omega⟩) _
