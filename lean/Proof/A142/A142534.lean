import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142534 lists the primes congruent to 4 mod 53. -/
theorem A142534.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142534 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 4) (n - 1) : ℤ) := by
  simp only [A142534, A142534.P10082379553316276253.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142534.P10082379553316276253.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142534.P10082379553316276253.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142534.P10082379553316276253.f1, SequenceMachineLib.memo_apply]; omega⟩) _
