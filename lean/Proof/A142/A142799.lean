import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142799 lists the primes congruent to 59 mod 60. -/
theorem A142799.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142799 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 59) (n - 1) : ℤ) := by
  simp only [A142799, A142799.P6366927618958974393.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 60 59 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142799.P6366927618958974393.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142799.P6366927618958974393.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 60, by simp only [A142799.P6366927618958974393.f1, SequenceMachineLib.memo_apply]; omega⟩) _
