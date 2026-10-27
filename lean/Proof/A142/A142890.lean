import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142890 lists the primes congruent to 2 mod 63. -/
theorem A142890.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142890 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 2) (n - 1) : ℤ) := by
  simp only [A142890, A142890.P9846475722823215660.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142890.P9846475722823215660.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142890.P9846475722823215660.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142890.P9846475722823215660.f1, SequenceMachineLib.memo_apply]; omega⟩) _
