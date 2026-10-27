import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142257 lists the primes congruent to 8 mod 43. -/
theorem A142257.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142257 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 8) (n - 1) : ℤ) := by
  simp only [A142257, A142257.P7285034262301320012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142257.P7285034262301320012.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142257.P7285034262301320012.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142257.P7285034262301320012.f1, SequenceMachineLib.memo_apply]; omega⟩) _
