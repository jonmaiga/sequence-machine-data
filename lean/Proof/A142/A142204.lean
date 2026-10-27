import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142204 lists the primes congruent to 7 mod 41. -/
theorem A142204.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142204 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 7) (n - 1) : ℤ) := by
  simp only [A142204, A142204.P796493894810743383.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142204.P796493894810743383.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142204.P796493894810743383.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142204.P796493894810743383.f1, SequenceMachineLib.memo_apply]; omega⟩) _
