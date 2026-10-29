import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141955 lists the primes congruent to 11 mod 27. -/
theorem A141955.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141955 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 11) (n - 1) : ℤ) := by
  simp only [A141955, A141955.P16226930735419179402.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141955.P16226930735419179402.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141955.P16226930735419179402.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141955.P16226930735419179402.f1, SequenceMachineLib.memo_apply]; omega⟩) _
