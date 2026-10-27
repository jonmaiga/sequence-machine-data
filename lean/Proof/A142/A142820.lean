import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142820 lists the primes congruent to 22 mod 61. -/
theorem A142820.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142820 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 22) (n - 1) : ℤ) := by
  simp only [A142820, A142820.P8547957382570766057.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142820.P8547957382570766057.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142820.P8547957382570766057.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142820.P8547957382570766057.f1, SequenceMachineLib.memo_apply]; omega⟩) _
