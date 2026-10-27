import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142418 lists the primes congruent to 5 mod 49. -/
theorem A142418.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142418 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 5) (n - 1) : ℤ) := by
  simp only [A142418, A142418.P5100325192273801817.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142418.P5100325192273801817.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142418.P5100325192273801817.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142418.P5100325192273801817.f1, SequenceMachineLib.memo_apply]; omega⟩) _
