import Prog.A154.A1546
import Proof.Lib.PrimesMod

/-- A154621 lists the primes congruent to 32 mod 67. -/
theorem A154621.anchor (n : ℕ) (hn : 1 ≤ n) :
    A154621 n = (Nat.nth (fun p => p.Prime ∧ p % 67 = 32) (n - 1) : ℤ) := by
  simp only [A154621, A154621.P14881056831225512097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 67 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A154621.P14881056831225512097.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A154621.P14881056831225512097.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 67, by simp only [A154621.P14881056831225512097.f1, SequenceMachineLib.memo_apply]; omega⟩) _
