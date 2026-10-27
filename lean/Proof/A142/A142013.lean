import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142013 lists the primes congruent to 9 mod 31. -/
theorem A142013.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142013 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 9) (n - 1) : ℤ) := by
  simp only [A142013, A142013.P18424126282494978244.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142013.P18424126282494978244.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142013.P18424126282494978244.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142013.P18424126282494978244.f1, SequenceMachineLib.memo_apply]; omega⟩) _
