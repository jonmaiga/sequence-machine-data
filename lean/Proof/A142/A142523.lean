import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142523 lists the primes congruent to 33 mod 52. -/
theorem A142523.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142523 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 33) (n - 1) : ℤ) := by
  simp only [A142523, A142523.P2913508382872282978.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142523.P2913508382872282978.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142523.P2913508382872282978.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142523.P2913508382872282978.f1, SequenceMachineLib.memo_apply]; omega⟩) _
