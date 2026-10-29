import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142437 lists the primes congruent to 27 mod 49. -/
theorem A142437.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142437 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 27) (n - 1) : ℤ) := by
  simp only [A142437, A142437.P9659196933488218483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142437.P9659196933488218483.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142437.P9659196933488218483.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 22) / 49, by simp only [A142437.P9659196933488218483.f1, SequenceMachineLib.memo_apply]; omega⟩) _
