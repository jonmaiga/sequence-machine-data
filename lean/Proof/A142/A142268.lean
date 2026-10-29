import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142268 lists the primes congruent to 19 mod 43. -/
theorem A142268.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142268 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 19) (n - 1) : ℤ) := by
  simp only [A142268, A142268.P18212297061773794963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142268.P18212297061773794963.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142268.P18212297061773794963.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142268.P18212297061773794963.f1, SequenceMachineLib.memo_apply]; omega⟩) _
