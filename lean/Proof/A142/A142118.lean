import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142118 lists the primes congruent to 9 mod 37. -/
theorem A142118.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142118 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 9) (n - 1) : ℤ) := by
  simp only [A142118, A142118.P3005814989632638983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142118.P3005814989632638983.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142118.P3005814989632638983.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142118.P3005814989632638983.f1, SequenceMachineLib.memo_apply]; omega⟩) _
