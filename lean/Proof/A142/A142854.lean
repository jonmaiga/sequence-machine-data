import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142854 lists the primes congruent to 56 mod 61. -/
theorem A142854.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142854 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 56) (n - 1) : ℤ) := by
  simp only [A142854, A142854.P17682631815115864914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 56 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142854.P17682631815115864914.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142854.P17682631815115864914.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 61, by simp only [A142854.P17682631815115864914.f1, SequenceMachineLib.memo_apply]; omega⟩) _
