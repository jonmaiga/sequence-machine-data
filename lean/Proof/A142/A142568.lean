import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142568 lists the primes congruent to 38 mod 53. -/
theorem A142568.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142568 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 38) (n - 1) : ℤ) := by
  simp only [A142568, A142568.P6146946396043828447.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142568.P6146946396043828447.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142568.P6146946396043828447.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 53, by simp only [A142568.P6146946396043828447.f1, SequenceMachineLib.memo_apply]; omega⟩) _
