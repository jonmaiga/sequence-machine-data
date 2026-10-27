import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142672 lists the primes congruent to 11 mod 57. -/
theorem A142672.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142672 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 11) (n - 1) : ℤ) := by
  simp only [A142672, A142672.P8449670467683063956.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142672.P8449670467683063956.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142672.P8449670467683063956.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142672.P8449670467683063956.f1, SequenceMachineLib.memo_apply]; omega⟩) _
