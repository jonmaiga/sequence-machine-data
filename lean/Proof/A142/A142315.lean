import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142315 lists the primes congruent to 7 mod 45. -/
theorem A142315.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142315 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 7) (n - 1) : ℤ) := by
  simp only [A142315, A142315.P7476752833073599193.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142315.P7476752833073599193.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142315.P7476752833073599193.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142315.P7476752833073599193.f1, SequenceMachineLib.memo_apply]; omega⟩) _
