import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142308 lists the primes congruent to 37 mod 44. -/
theorem A142308.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142308 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 37) (n - 1) : ℤ) := by
  simp only [A142308, A142308.P8768982004238066164.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142308.P8768982004238066164.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142308.P8768982004238066164.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 44, by simp only [A142308.P8768982004238066164.f1, SequenceMachineLib.memo_apply]; omega⟩) _
