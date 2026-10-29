import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142679 lists the primes congruent to 23 mod 57. -/
theorem A142679.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142679 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 23) (n - 1) : ℤ) := by
  simp only [A142679, A142679.P8933469794442793001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142679.P8933469794442793001.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142679.P8933469794442793001.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142679.P8933469794442793001.f1, SequenceMachineLib.memo_apply]; omega⟩) _
