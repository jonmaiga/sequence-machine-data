import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142167 lists the primes congruent to 14 mod 39. -/
theorem A142167.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142167 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 14) (n - 1) : ℤ) := by
  simp only [A142167, A142167.P5362429052921519213.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142167.P5362429052921519213.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142167.P5362429052921519213.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142167.P5362429052921519213.f1, SequenceMachineLib.memo_apply]; omega⟩) _
