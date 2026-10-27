import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142284 lists the primes congruent to 35 mod 43. -/
theorem A142284.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142284 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 35) (n - 1) : ℤ) := by
  simp only [A142284, A142284.P2727108731763885567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142284.P2727108731763885567.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142284.P2727108731763885567.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 43, by simp only [A142284.P2727108731763885567.f1, SequenceMachineLib.memo_apply]; omega⟩) _
