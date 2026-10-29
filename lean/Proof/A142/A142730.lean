import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142730 lists the primes congruent to 3 mod 59. -/
theorem A142730.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142730 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 3) (n - 1) : ℤ) := by
  simp only [A142730, A142730.P2012576673298323486.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142730.P2012576673298323486.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142730.P2012576673298323486.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142730.P2012576673298323486.f1, SequenceMachineLib.memo_apply]; omega⟩) _
