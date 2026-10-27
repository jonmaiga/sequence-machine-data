import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142385 lists the primes congruent to 34 mod 47. -/
theorem A142385.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142385 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 34) (n - 1) : ℤ) := by
  simp only [A142385, A142385.P9294846718590855022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142385.P9294846718590855022.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142385.P9294846718590855022.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 47, by simp only [A142385.P9294846718590855022.f1, SequenceMachineLib.memo_apply]; omega⟩) _
