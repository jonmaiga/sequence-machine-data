import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141985 lists the primes congruent to 9 mod 29. -/
theorem A141985.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141985 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 9) (n - 1) : ℤ) := by
  simp only [A141985, A141985.P5836169948399936421.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141985.P5836169948399936421.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141985.P5836169948399936421.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141985.P5836169948399936421.f1, SequenceMachineLib.memo_apply]; omega⟩) _
