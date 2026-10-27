import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142844 lists the primes congruent to 46 mod 61. -/
theorem A142844.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142844 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 46) (n - 1) : ℤ) := by
  simp only [A142844, A142844.P11545309121442495509.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142844.P11545309121442495509.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142844.P11545309121442495509.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 61, by simp only [A142844.P11545309121442495509.f1, SequenceMachineLib.memo_apply]; omega⟩) _
