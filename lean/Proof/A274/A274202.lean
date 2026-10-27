import Prog.A274.A2742
import Proof.Lib.PrimesMod

/-- A274202 lists the primes congruent to 31 mod 65. -/
theorem A274202.anchor (n : ℕ) (hn : 1 ≤ n) :
    A274202 n = (Nat.nth (fun p => p.Prime ∧ p % 65 = 31) (n - 1) : ℤ) := by
  simp only [A274202, A274202.P1701483818387671169.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 65 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A274202.P1701483818387671169.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A274202.P1701483818387671169.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 65, by simp only [A274202.P1701483818387671169.f1, SequenceMachineLib.memo_apply]; omega⟩) _
