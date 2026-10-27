import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142513 lists the primes congruent to 11 mod 52. -/
theorem A142513.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142513 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 11) (n - 1) : ℤ) := by
  simp only [A142513, A142513.P12294925522220628780.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142513.P12294925522220628780.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142513.P12294925522220628780.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142513.P12294925522220628780.f1, SequenceMachineLib.memo_apply]; omega⟩) _
