import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142896 lists the primes congruent to 13 mod 63. -/
theorem A142896.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142896 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 13) (n - 1) : ℤ) := by
  simp only [A142896, A142896.P8110623759283168038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142896.P8110623759283168038.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142896.P8110623759283168038.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142896.P8110623759283168038.f1, SequenceMachineLib.memo_apply]; omega⟩) _
