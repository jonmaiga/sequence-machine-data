import Prog.A212.A2123
import Proof.Lib.PrimesMod

/-- A212374 lists the primes congruent to 1 mod 23. -/
theorem A212374.anchor (n : ℕ) (hn : 1 ≤ n) :
    A212374 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 1) (n - 1) : ℤ) := by
  simp only [A212374, A212374.P12859019626991539473.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A212374.P12859019626991539473.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A212374.P12859019626991539473.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A212374.P12859019626991539473.f1, SequenceMachineLib.memo_apply]; omega⟩) _
