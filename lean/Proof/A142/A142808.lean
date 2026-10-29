import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142808 lists the primes congruent to 10 mod 61. -/
theorem A142808.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142808 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 10) (n - 1) : ℤ) := by
  simp only [A142808, A142808.P11157494017108577309.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142808.P11157494017108577309.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142808.P11157494017108577309.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142808.P11157494017108577309.f1, SequenceMachineLib.memo_apply]; omega⟩) _
