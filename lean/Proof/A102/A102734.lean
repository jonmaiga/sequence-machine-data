import Prog.A102.A1027
import Proof.Lib.PrimesMod

/-- A102734 lists the primes congruent to 5 mod 23. -/
theorem A102734.anchor (n : ℕ) (hn : 1 ≤ n) :
    A102734 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 5) (n - 1) : ℤ) := by
  simp only [A102734, A102734.P5484611886346672222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A102734.P5484611886346672222.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A102734.P5484611886346672222.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A102734.P5484611886346672222.f1, SequenceMachineLib.memo_apply]; omega⟩) _
