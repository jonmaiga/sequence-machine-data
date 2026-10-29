import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142574 lists the primes congruent to 44 mod 53. -/
theorem A142574.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142574 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 44) (n - 1) : ℤ) := by
  simp only [A142574, A142574.P11859166775549771955.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142574.P11859166775549771955.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142574.P11859166775549771955.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 53, by simp only [A142574.P11859166775549771955.f1, SequenceMachineLib.memo_apply]; omega⟩) _
