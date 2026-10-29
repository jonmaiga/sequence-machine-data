import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142197 lists the primes congruent to 37 mod 40. -/
theorem A142197.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142197 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 37) (n - 1) : ℤ) := by
  simp only [A142197, A142197.P12169617643097122472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142197.P12169617643097122472.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142197.P12169617643097122472.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 40, by simp only [A142197.P12169617643097122472.f1, SequenceMachineLib.memo_apply]; omega⟩) _
