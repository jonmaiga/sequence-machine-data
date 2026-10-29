import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142673 lists the primes congruent to 13 mod 57. -/
theorem A142673.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142673 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 13) (n - 1) : ℤ) := by
  simp only [A142673, A142673.P985649265488508712.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142673.P985649265488508712.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142673.P985649265488508712.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142673.P985649265488508712.f1, SequenceMachineLib.memo_apply]; omega⟩) _
