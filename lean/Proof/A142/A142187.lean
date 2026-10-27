import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142187 lists the primes congruent to 11 mod 40. -/
theorem A142187.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142187 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 11) (n - 1) : ℤ) := by
  simp only [A142187, A142187.P9189449944067263993.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 40 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142187.P9189449944067263993.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142187.P9189449944067263993.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 40, by simp only [A142187.P9189449944067263993.f1, SequenceMachineLib.memo_apply]; omega⟩) _
