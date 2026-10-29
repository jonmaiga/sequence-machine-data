import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142823 lists the primes congruent to 25 mod 61. -/
theorem A142823.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142823 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 25) (n - 1) : ℤ) := by
  simp only [A142823, A142823.P14633950026413410704.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142823.P14633950026413410704.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142823.P14633950026413410704.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142823.P14633950026413410704.f1, SequenceMachineLib.memo_apply]; omega⟩) _
