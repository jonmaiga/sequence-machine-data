import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142657 lists the primes congruent to 39 mod 56. -/
theorem A142657.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142657 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 39) (n - 1) : ℤ) := by
  simp only [A142657, A142657.P1023764406508125918.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142657.P1023764406508125918.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142657.P1023764406508125918.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142657.P1023764406508125918.f1, SequenceMachineLib.memo_apply]; omega⟩) _
