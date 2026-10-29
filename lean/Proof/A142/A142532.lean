import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142532 lists the primes congruent to 2 mod 53. -/
theorem A142532.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142532 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 2) (n - 1) : ℤ) := by
  simp only [A142532, A142532.P13946379631833110420.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142532.P13946379631833110420.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142532.P13946379631833110420.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142532.P13946379631833110420.f1, SequenceMachineLib.memo_apply]; omega⟩) _
