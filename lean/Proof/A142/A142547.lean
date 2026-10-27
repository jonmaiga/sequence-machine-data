import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142547 lists the primes congruent to 17 mod 53. -/
theorem A142547.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142547 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 17) (n - 1) : ℤ) := by
  simp only [A142547, A142547.P9271317736826490547.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142547.P9271317736826490547.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142547.P9271317736826490547.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142547.P9271317736826490547.f1, SequenceMachineLib.memo_apply]; omega⟩) _
