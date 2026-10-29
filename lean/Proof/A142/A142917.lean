import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142917 lists the primes congruent to 50 mod 63. -/
theorem A142917.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142917 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 50) (n - 1) : ℤ) := by
  simp only [A142917, A142917.P11354661847014680718.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 50 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142917.P11354661847014680718.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142917.P11354661847014680718.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 63, by simp only [A142917.P11354661847014680718.f1, SequenceMachineLib.memo_apply]; omega⟩) _
