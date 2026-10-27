import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142319 lists the primes congruent to 14 mod 45. -/
theorem A142319.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142319 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 14) (n - 1) : ℤ) := by
  simp only [A142319, A142319.P12550948628733803953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142319.P12550948628733803953.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142319.P12550948628733803953.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142319.P12550948628733803953.f1, SequenceMachineLib.memo_apply]; omega⟩) _
