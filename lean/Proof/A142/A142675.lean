import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142675 lists the primes congruent to 16 mod 57. -/
theorem A142675.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142675 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 16) (n - 1) : ℤ) := by
  simp only [A142675, A142675.P2535215039015274571.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142675.P2535215039015274571.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142675.P2535215039015274571.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142675.P2535215039015274571.f1, SequenceMachineLib.memo_apply]; omega⟩) _
