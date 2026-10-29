import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142843 lists the primes congruent to 45 mod 61. -/
theorem A142843.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142843 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 45) (n - 1) : ℤ) := by
  simp only [A142843, A142843.P17669793635415896109.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142843.P17669793635415896109.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142843.P17669793635415896109.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 61, by simp only [A142843.P17669793635415896109.f1, SequenceMachineLib.memo_apply]; omega⟩) _
