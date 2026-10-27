import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141882 lists the primes congruent to 7 mod 20. -/
theorem A141882.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141882 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 7) (n - 1) : ℤ) := by
  simp only [A141882, A141882.P11394083926865790889.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 20 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141882.P11394083926865790889.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141882.P11394083926865790889.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 20, by simp only [A141882.P11394083926865790889.f1, SequenceMachineLib.memo_apply]; omega⟩) _
