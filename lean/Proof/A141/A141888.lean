import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141888 lists the primes congruent to 2 mod 21. -/
theorem A141888.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141888 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 2) (n - 1) : ℤ) := by
  simp only [A141888, A141888.P3817205861600530179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 21 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141888.P3817205861600530179.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141888.P3817205861600530179.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 21, by simp only [A141888.P3817205861600530179.f1, SequenceMachineLib.memo_apply]; omega⟩) _
