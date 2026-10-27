import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142441 lists the primes congruent to 32 mod 49. -/
theorem A142441.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142441 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 32) (n - 1) : ℤ) := by
  simp only [A142441, A142441.P9075176759521242998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142441.P9075176759521242998.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142441.P9075176759521242998.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 49, by simp only [A142441.P9075176759521242998.f1, SequenceMachineLib.memo_apply]; omega⟩) _
