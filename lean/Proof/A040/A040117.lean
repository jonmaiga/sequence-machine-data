import Prog.A040.A0401
import Proof.Lib.PrimesMod

/-- A040117 lists the primes congruent to 5 mod 12. -/
theorem A040117.anchor (n : ℕ) (hn : 1 ≤ n) :
    A040117 n = (Nat.nth (fun p => p.Prime ∧ p % 12 = 5) (n - 1) : ℤ) := by
  simp only [A040117, A040117.P5220825624674158384.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 12 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A040117.P5220825624674158384.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A040117.P5220825624674158384.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 12, by simp only [A040117.P5220825624674158384.f1, SequenceMachineLib.memo_apply]; omega⟩) _
