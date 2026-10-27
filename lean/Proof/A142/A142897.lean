import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142897 lists the primes congruent to 16 mod 63. -/
theorem A142897.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142897 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 16) (n - 1) : ℤ) := by
  simp only [A142897, A142897.P5737328438364324810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142897.P5737328438364324810.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142897.P5737328438364324810.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142897.P5737328438364324810.f1, SequenceMachineLib.memo_apply]; omega⟩) _
