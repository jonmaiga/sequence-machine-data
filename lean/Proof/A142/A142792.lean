import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142792 lists the primes congruent to 31 mod 60. -/
theorem A142792.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142792 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 31) (n - 1) : ℤ) := by
  simp only [A142792, A142792.P14666130820681181085.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 60 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142792.P14666130820681181085.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142792.P14666130820681181085.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 29) / 60, by simp only [A142792.P14666130820681181085.f1, SequenceMachineLib.memo_apply]; omega⟩) _
