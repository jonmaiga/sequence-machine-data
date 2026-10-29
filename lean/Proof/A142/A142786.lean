import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142786 lists the primes congruent to 7 mod 60. -/
theorem A142786.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142786 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 7) (n - 1) : ℤ) := by
  simp only [A142786, A142786.P8917819512405611258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 60 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142786.P8917819512405611258.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142786.P8917819512405611258.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 60, by simp only [A142786.P8917819512405611258.f1, SequenceMachineLib.memo_apply]; omega⟩) _
