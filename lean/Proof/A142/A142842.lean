import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142842 lists the primes congruent to 44 mod 61. -/
theorem A142842.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142842 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 44) (n - 1) : ℤ) := by
  simp only [A142842, A142842.P12374244394291574945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142842.P12374244394291574945.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142842.P12374244394291574945.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142842.P12374244394291574945.f1, SequenceMachineLib.memo_apply]; omega⟩) _
