import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141858 lists the primes congruent to 2 mod 13. -/
theorem A141858.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141858 n = (Nat.nth (fun p => p.Prime ∧ p % 13 = 2) (n - 1) : ℤ) := by
  simp only [A141858, A141858.P15257199900606846374.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 13 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141858.P15257199900606846374.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141858.P15257199900606846374.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 13, by simp only [A141858.P15257199900606846374.f1, SequenceMachineLib.memo_apply]; omega⟩) _
