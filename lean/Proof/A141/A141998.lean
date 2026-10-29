import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141998 lists the primes congruent to 22 mod 29. -/
theorem A141998.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141998 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 22) (n - 1) : ℤ) := by
  simp only [A141998, A141998.P14469192312741898644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141998.P14469192312741898644.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141998.P14469192312741898644.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 29, by simp only [A141998.P14469192312741898644.f1, SequenceMachineLib.memo_apply]; omega⟩) _
