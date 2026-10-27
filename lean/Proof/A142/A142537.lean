import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142537 lists the primes congruent to 7 mod 53. -/
theorem A142537.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142537 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 7) (n - 1) : ℤ) := by
  simp only [A142537, A142537.P10942053936895890549.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142537.P10942053936895890549.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142537.P10942053936895890549.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142537.P10942053936895890549.f1, SequenceMachineLib.memo_apply]; omega⟩) _
