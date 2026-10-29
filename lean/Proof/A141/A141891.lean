import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141891 lists the primes congruent to 8 mod 21. -/
theorem A141891.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141891 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 8) (n - 1) : ℤ) := by
  simp only [A141891, A141891.P12868481659488375521.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 21 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141891.P12868481659488375521.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141891.P12868481659488375521.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 21, by simp only [A141891.P12868481659488375521.f1, SequenceMachineLib.memo_apply]; omega⟩) _
