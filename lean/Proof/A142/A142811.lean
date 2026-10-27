import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142811 lists the primes congruent to 13 mod 61. -/
theorem A142811.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142811 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 13) (n - 1) : ℤ) := by
  simp only [A142811, A142811.P10089377442052219553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142811.P10089377442052219553.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142811.P10089377442052219553.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142811.P10089377442052219553.f1, SequenceMachineLib.memo_apply]; omega⟩) _
