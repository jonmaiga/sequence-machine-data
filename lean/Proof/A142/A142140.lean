import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142140 lists the primes congruent to 31 mod 37. -/
theorem A142140.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142140 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 31) (n - 1) : ℤ) := by
  simp only [A142140, A142140.P16729906437606079837.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142140.P16729906437606079837.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142140.P16729906437606079837.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 37, by simp only [A142140.P16729906437606079837.f1, SequenceMachineLib.memo_apply]; omega⟩) _
