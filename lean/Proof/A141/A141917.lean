import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141917 lists the primes congruent to 13 mod 23. -/
theorem A141917.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141917 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 13) (n - 1) : ℤ) := by
  simp only [A141917, A141917.P16896383629659116904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141917.P16896383629659116904.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141917.P16896383629659116904.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 23, by simp only [A141917.P16896383629659116904.f1, SequenceMachineLib.memo_apply]; omega⟩) _
