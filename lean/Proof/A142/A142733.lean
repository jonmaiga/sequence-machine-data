import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142733 lists the primes congruent to 6 mod 59. -/
theorem A142733.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142733 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 6) (n - 1) : ℤ) := by
  simp only [A142733, A142733.P9486175445827060876.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142733.P9486175445827060876.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142733.P9486175445827060876.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142733.P9486175445827060876.f1, SequenceMachineLib.memo_apply]; omega⟩) _
