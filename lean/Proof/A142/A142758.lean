import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142758 lists the primes congruent to 31 mod 59. -/
theorem A142758.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142758 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 31) (n - 1) : ℤ) := by
  simp only [A142758, A142758.P2388600102352783493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142758.P2388600102352783493.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142758.P2388600102352783493.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 28) / 59, by simp only [A142758.P2388600102352783493.f1, SequenceMachineLib.memo_apply]; omega⟩) _
