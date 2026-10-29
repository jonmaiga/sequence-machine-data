import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142306 lists the primes congruent to 31 mod 44. -/
theorem A142306.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142306 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 31) (n - 1) : ℤ) := by
  simp only [A142306, A142306.P5695032437069678238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 44 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142306.P5695032437069678238.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142306.P5695032437069678238.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 44, by simp only [A142306.P5695032437069678238.f1, SequenceMachineLib.memo_apply]; omega⟩) _
