import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142624 lists the primes congruent to 32 mod 55. -/
theorem A142624.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142624 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 32) (n - 1) : ℤ) := by
  simp only [A142624, A142624.P3293549727661493354.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142624.P3293549727661493354.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142624.P3293549727661493354.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 55, by simp only [A142624.P3293549727661493354.f1, SequenceMachineLib.memo_apply]; omega⟩) _
