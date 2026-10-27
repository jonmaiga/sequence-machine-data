import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142784 lists the primes congruent to 57 mod 59. -/
theorem A142784.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142784 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 57) (n - 1) : ℤ) := by
  simp only [A142784, A142784.P12270483330170810183.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 57 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142784.P12270483330170810183.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142784.P12270483330170810183.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 59, by simp only [A142784.P12270483330170810183.f1, SequenceMachineLib.memo_apply]; omega⟩) _
