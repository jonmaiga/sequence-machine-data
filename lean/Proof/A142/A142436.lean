import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142436 lists the primes congruent to 26 mod 49. -/
theorem A142436.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142436 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 26) (n - 1) : ℤ) := by
  simp only [A142436, A142436.P9981599043368276042.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142436.P9981599043368276042.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142436.P9981599043368276042.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 49, by simp only [A142436.P9981599043368276042.f1, SequenceMachineLib.memo_apply]; omega⟩) _
