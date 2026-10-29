import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142740 lists the primes congruent to 13 mod 59. -/
theorem A142740.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142740 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 13) (n - 1) : ℤ) := by
  simp only [A142740, A142740.P5608827552903211760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142740.P5608827552903211760.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142740.P5608827552903211760.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142740.P5608827552903211760.f1, SequenceMachineLib.memo_apply]; omega⟩) _
