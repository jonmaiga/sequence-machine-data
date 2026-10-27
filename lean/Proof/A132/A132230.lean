import Prog.A132.A1322
import Proof.Lib.PrimesMod

/-- A132230 lists the primes congruent to 1 mod 30. -/
theorem A132230.anchor (n : ℕ) (hn : 1 ≤ n) :
    A132230 n = (Nat.nth (fun p => p.Prime ∧ p % 30 = 1) (n - 1) : ℤ) := by
  simp only [A132230, A132230.P4618418594459579216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 30 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A132230.P4618418594459579216.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A132230.P4618418594459579216.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 30, by simp only [A132230.P4618418594459579216.f1, SequenceMachineLib.memo_apply]; omega⟩) _
