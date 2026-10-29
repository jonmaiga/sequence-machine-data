import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142494 lists the primes congruent to 29 mod 51. -/
theorem A142494.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142494 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 29) (n - 1) : ℤ) := by
  simp only [A142494, A142494.P9913982677588388870.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142494.P9913982677588388870.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142494.P9913982677588388870.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 22) / 51, by simp only [A142494.P9913982677588388870.f1, SequenceMachineLib.memo_apply]; omega⟩) _
