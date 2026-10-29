import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142602 lists the primes congruent to 2 mod 55. -/
theorem A142602.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142602 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 2) (n - 1) : ℤ) := by
  simp only [A142602, A142602.P9632824450538674895.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142602.P9632824450538674895.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142602.P9632824450538674895.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142602.P9632824450538674895.f1, SequenceMachineLib.memo_apply]; omega⟩) _
