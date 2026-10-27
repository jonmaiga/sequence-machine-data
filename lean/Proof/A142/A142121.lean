import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142121 lists the primes congruent to 12 mod 37. -/
theorem A142121.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142121 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 12) (n - 1) : ℤ) := by
  simp only [A142121, A142121.P1153352495093081478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142121.P1153352495093081478.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142121.P1153352495093081478.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142121.P1153352495093081478.f1, SequenceMachineLib.memo_apply]; omega⟩) _
