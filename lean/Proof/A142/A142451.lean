import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142451 lists the primes congruent to 44 mod 49. -/
theorem A142451.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142451 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 44) (n - 1) : ℤ) := by
  simp only [A142451, A142451.P16375668238435380372.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142451.P16375668238435380372.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142451.P16375668238435380372.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 49, by simp only [A142451.P16375668238435380372.f1, SequenceMachineLib.memo_apply]; omega⟩) _
