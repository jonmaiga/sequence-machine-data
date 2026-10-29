import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142261 lists the primes congruent to 12 mod 43. -/
theorem A142261.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142261 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 12) (n - 1) : ℤ) := by
  simp only [A142261, A142261.P2629177648987338839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142261.P2629177648987338839.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142261.P2629177648987338839.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142261.P2629177648987338839.f1, SequenceMachineLib.memo_apply]; omega⟩) _
