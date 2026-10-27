import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142562 lists the primes congruent to 32 mod 53. -/
theorem A142562.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142562 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 32) (n - 1) : ℤ) := by
  simp only [A142562, A142562.P3809062214029627843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142562.P3809062214029627843.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142562.P3809062214029627843.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 53, by simp only [A142562.P3809062214029627843.f1, SequenceMachineLib.memo_apply]; omega⟩) _
