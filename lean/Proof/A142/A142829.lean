import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142829 lists the primes congruent to 31 mod 61. -/
theorem A142829.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142829 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 31) (n - 1) : ℤ) := by
  simp only [A142829, A142829.P4429976672204541894.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142829.P4429976672204541894.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142829.P4429976672204541894.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 30) / 61, by simp only [A142829.P4429976672204541894.f1, SequenceMachineLib.memo_apply]; omega⟩) _
