import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142206 lists the primes congruent to 9 mod 41. -/
theorem A142206.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142206 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 9) (n - 1) : ℤ) := by
  simp only [A142206, A142206.P5977225734274006564.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142206.P5977225734274006564.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142206.P5977225734274006564.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142206.P5977225734274006564.f1, SequenceMachineLib.memo_apply]; omega⟩) _
