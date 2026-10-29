import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142014 lists the primes congruent to 10 mod 31. -/
theorem A142014.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142014 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 10) (n - 1) : ℤ) := by
  simp only [A142014, A142014.P10460385428154183684.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142014.P10460385428154183684.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142014.P10460385428154183684.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142014.P10460385428154183684.f1, SequenceMachineLib.memo_apply]; omega⟩) _
