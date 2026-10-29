import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142815 lists the primes congruent to 17 mod 61. -/
theorem A142815.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142815 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 17) (n - 1) : ℤ) := by
  simp only [A142815, A142815.P15485703844262481352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142815.P15485703844262481352.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142815.P15485703844262481352.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142815.P15485703844262481352.f1, SequenceMachineLib.memo_apply]; omega⟩) _
