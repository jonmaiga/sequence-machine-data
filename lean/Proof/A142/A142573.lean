import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142573 lists the primes congruent to 43 mod 53. -/
theorem A142573.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142573 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 43) (n - 1) : ℤ) := by
  simp only [A142573, A142573.P10774366854094148211.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142573.P10774366854094148211.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142573.P10774366854094148211.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 53, by simp only [A142573.P10774366854094148211.f1, SequenceMachineLib.memo_apply]; omega⟩) _
