import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142790 lists the primes congruent to 23 mod 60. -/
theorem A142790.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142790 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 23) (n - 1) : ℤ) := by
  simp only [A142790, A142790.P13001401062835289333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 60 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142790.P13001401062835289333.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142790.P13001401062835289333.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 60, by simp only [A142790.P13001401062835289333.f1, SequenceMachineLib.memo_apply]; omega⟩) _
