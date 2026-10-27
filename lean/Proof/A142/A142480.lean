import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142480 lists the primes congruent to 7 mod 51. -/
theorem A142480.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142480 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 7) (n - 1) : ℤ) := by
  simp only [A142480, A142480.P5226708681425799937.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142480.P5226708681425799937.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142480.P5226708681425799937.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142480.P5226708681425799937.f1, SequenceMachineLib.memo_apply]; omega⟩) _
