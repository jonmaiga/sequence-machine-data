import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142164 lists the primes congruent to 8 mod 39. -/
theorem A142164.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142164 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 8) (n - 1) : ℤ) := by
  simp only [A142164, A142164.P11559206218273394558.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142164.P11559206218273394558.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142164.P11559206218273394558.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142164.P11559206218273394558.f1, SequenceMachineLib.memo_apply]; omega⟩) _
