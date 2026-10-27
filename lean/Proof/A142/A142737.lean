import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142737 lists the primes congruent to 10 mod 59. -/
theorem A142737.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142737 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 10) (n - 1) : ℤ) := by
  simp only [A142737, A142737.P1306565779540768433.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142737.P1306565779540768433.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142737.P1306565779540768433.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142737.P1306565779540768433.f1, SequenceMachineLib.memo_apply]; omega⟩) _
