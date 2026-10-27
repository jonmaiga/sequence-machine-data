import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142735 lists the primes congruent to 8 mod 59. -/
theorem A142735.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142735 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 8) (n - 1) : ℤ) := by
  simp only [A142735, A142735.P17921475589984968636.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142735.P17921475589984968636.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142735.P17921475589984968636.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142735.P17921475589984968636.f1, SequenceMachineLib.memo_apply]; omega⟩) _
