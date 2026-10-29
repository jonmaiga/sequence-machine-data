import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142443 lists the primes congruent to 34 mod 49. -/
theorem A142443.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142443 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 34) (n - 1) : ℤ) := by
  simp only [A142443, A142443.P13821965067619815590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142443.P13821965067619815590.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142443.P13821965067619815590.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 49, by simp only [A142443.P13821965067619815590.f1, SequenceMachineLib.memo_apply]; omega⟩) _
