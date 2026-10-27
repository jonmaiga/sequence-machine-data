import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142124 lists the primes congruent to 15 mod 37. -/
theorem A142124.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142124 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 15) (n - 1) : ℤ) := by
  simp only [A142124, A142124.P14320464731908662826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142124.P14320464731908662826.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142124.P14320464731908662826.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142124.P14320464731908662826.f1, SequenceMachineLib.memo_apply]; omega⟩) _
