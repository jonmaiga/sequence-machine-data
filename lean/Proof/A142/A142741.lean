import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142741 lists the primes congruent to 14 mod 59. -/
theorem A142741.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142741 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 14) (n - 1) : ℤ) := by
  simp only [A142741, A142741.P12670144625039199040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142741.P12670144625039199040.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142741.P12670144625039199040.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142741.P12670144625039199040.f1, SequenceMachineLib.memo_apply]; omega⟩) _
