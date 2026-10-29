import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142320 lists the primes congruent to 16 mod 45. -/
theorem A142320.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142320 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 16) (n - 1) : ℤ) := by
  simp only [A142320, A142320.P9111520421625643267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142320.P9111520421625643267.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142320.P9111520421625643267.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142320.P9111520421625643267.f1, SequenceMachineLib.memo_apply]; omega⟩) _
