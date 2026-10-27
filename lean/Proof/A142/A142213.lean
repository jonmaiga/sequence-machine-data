import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142213 lists the primes congruent to 16 mod 41. -/
theorem A142213.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142213 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 16) (n - 1) : ℤ) := by
  simp only [A142213, A142213.P31053959180324961.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142213.P31053959180324961.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142213.P31053959180324961.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142213.P31053959180324961.f1, SequenceMachineLib.memo_apply]; omega⟩) _
