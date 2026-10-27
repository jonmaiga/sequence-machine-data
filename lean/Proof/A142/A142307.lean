import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142307 lists the primes congruent to 35 mod 44. -/
theorem A142307.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142307 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 35) (n - 1) : ℤ) := by
  simp only [A142307, A142307.P7240851486528345183.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142307.P7240851486528345183.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142307.P7240851486528345183.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 44, by simp only [A142307.P7240851486528345183.f1, SequenceMachineLib.memo_apply]; omega⟩) _
