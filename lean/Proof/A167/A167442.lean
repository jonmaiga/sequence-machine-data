import Prog.A167.A1674
import Proof.Lib.PrimesMod

/-- A167442 lists the primes whose decimal expansion ends in 11. -/
theorem A167442.anchor (n : ℕ) (hn : 1 ≤ n) :
    A167442 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 11) (n - 1) : ℤ) := by
  simp only [A167442, A167442.P11740755665933557910.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A167442.P11740755665933557910.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A167442.P11740755665933557910.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A167442.P11740755665933557910.f1, SequenceMachineLib.memo_apply]; omega⟩) _
