import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142817 lists the primes congruent to 19 mod 61. -/
theorem A142817.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142817 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 19) (n - 1) : ℤ) := by
  simp only [A142817, A142817.P10524498803158292204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142817.P10524498803158292204.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142817.P10524498803158292204.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142817.P10524498803158292204.f1, SequenceMachineLib.memo_apply]; omega⟩) _
