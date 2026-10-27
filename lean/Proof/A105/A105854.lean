import Prog.A105.A1058
import Proof.Lib.PrimesMod

/-- A105854 lists the primes congruent to 3 mod 20. -/
theorem A105854.anchor (n : ℕ) (hn : 1 ≤ n) :
    A105854 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 3) (n - 1) : ℤ) := by
  simp only [A105854, A105854.P12072149843490517274.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 20 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A105854.P12072149843490517274.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A105854.P12072149843490517274.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 20, by simp only [A105854.P12072149843490517274.f1, SequenceMachineLib.memo_apply]; omega⟩) _
