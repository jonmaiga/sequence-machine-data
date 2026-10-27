import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141932 lists the primes congruent to 7 mod 25. -/
theorem A141932.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141932 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 7) (n - 1) : ℤ) := by
  simp only [A141932, A141932.P17786084984330798446.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 25 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141932.P17786084984330798446.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141932.P17786084984330798446.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 25, by simp only [A141932.P17786084984330798446.f1, SequenceMachineLib.memo_apply]; omega⟩) _
