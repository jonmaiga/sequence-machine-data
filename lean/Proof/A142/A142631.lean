import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142631 lists the primes congruent to 42 mod 55. -/
theorem A142631.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142631 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 42) (n - 1) : ℤ) := by
  simp only [A142631, A142631.P17460670216815725676.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 42 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142631.P17460670216815725676.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142631.P17460670216815725676.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 55, by simp only [A142631.P17460670216815725676.f1, SequenceMachineLib.memo_apply]; omega⟩) _
