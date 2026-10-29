import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142895 lists the primes congruent to 11 mod 63. -/
theorem A142895.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142895 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 11) (n - 1) : ℤ) := by
  simp only [A142895, A142895.P15871860020077362229.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142895.P15871860020077362229.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142895.P15871860020077362229.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142895.P15871860020077362229.f1, SequenceMachineLib.memo_apply]; omega⟩) _
