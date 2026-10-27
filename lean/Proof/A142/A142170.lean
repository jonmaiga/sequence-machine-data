import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142170 lists the primes congruent to 19 mod 39. -/
theorem A142170.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142170 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 19) (n - 1) : ℤ) := by
  simp only [A142170, A142170.P17066317394588974081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142170.P17066317394588974081.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142170.P17066317394588974081.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142170.P17066317394588974081.f1, SequenceMachineLib.memo_apply]; omega⟩) _
