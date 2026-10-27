import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142646 lists the primes congruent to 13 mod 56. -/
theorem A142646.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142646 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 13) (n - 1) : ℤ) := by
  simp only [A142646, A142646.P12979519044240396534.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142646.P12979519044240396534.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142646.P12979519044240396534.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142646.P12979519044240396534.f1, SequenceMachineLib.memo_apply]; omega⟩) _
