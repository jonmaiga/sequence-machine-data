import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142442 lists the primes congruent to 33 mod 49. -/
theorem A142442.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142442 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 33) (n - 1) : ℤ) := by
  simp only [A142442, A142442.P5986405944583897844.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142442.P5986405944583897844.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142442.P5986405944583897844.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 49, by simp only [A142442.P5986405944583897844.f1, SequenceMachineLib.memo_apply]; omega⟩) _
