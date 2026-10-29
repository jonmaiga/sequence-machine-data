import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142667 lists the primes congruent to 4 mod 57. -/
theorem A142667.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142667 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 4) (n - 1) : ℤ) := by
  simp only [A142667, A142667.P11421250028738427801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142667.P11421250028738427801.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142667.P11421250028738427801.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142667.P11421250028738427801.f1, SequenceMachineLib.memo_apply]; omega⟩) _
