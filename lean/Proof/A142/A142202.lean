import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142202 lists the primes congruent to 5 mod 41. -/
theorem A142202.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142202 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 5) (n - 1) : ℤ) := by
  simp only [A142202, A142202.P3070907779567306481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142202.P3070907779567306481.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142202.P3070907779567306481.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142202.P3070907779567306481.f1, SequenceMachineLib.memo_apply]; omega⟩) _
