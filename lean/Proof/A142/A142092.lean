import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142092 lists the primes congruent to 24 mod 35. -/
theorem A142092.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142092 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 24) (n - 1) : ℤ) := by
  simp only [A142092, A142092.P5017379542963769773.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142092.P5017379542963769773.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142092.P5017379542963769773.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 35, by simp only [A142092.P5017379542963769773.f1, SequenceMachineLib.memo_apply]; omega⟩) _
