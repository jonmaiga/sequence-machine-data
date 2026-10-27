import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142514 lists the primes congruent to 15 mod 52. -/
theorem A142514.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142514 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 15) (n - 1) : ℤ) := by
  simp only [A142514, A142514.P336309929502532069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142514.P336309929502532069.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142514.P336309929502532069.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142514.P336309929502532069.f1, SequenceMachineLib.memo_apply]; omega⟩) _
