import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142382 lists the primes congruent to 31 mod 47. -/
theorem A142382.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142382 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 31) (n - 1) : ℤ) := by
  simp only [A142382, A142382.P9930877696019130693.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142382.P9930877696019130693.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142382.P9930877696019130693.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142382.P9930877696019130693.f1, SequenceMachineLib.memo_apply]; omega⟩) _
