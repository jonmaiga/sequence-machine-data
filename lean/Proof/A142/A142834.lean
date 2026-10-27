import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142834 lists the primes congruent to 36 mod 61. -/
theorem A142834.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142834 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 36) (n - 1) : ℤ) := by
  simp only [A142834, A142834.P6523830976216642014.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142834.P6523830976216642014.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142834.P6523830976216642014.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 25) / 61, by simp only [A142834.P6523830976216642014.f1, SequenceMachineLib.memo_apply]; omega⟩) _
