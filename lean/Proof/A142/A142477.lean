import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142477 lists the primes congruent to 2 mod 51. -/
theorem A142477.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142477 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 2) (n - 1) : ℤ) := by
  simp only [A142477, A142477.P16501934418740501259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142477.P16501934418740501259.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142477.P16501934418740501259.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142477.P16501934418740501259.f1, SequenceMachineLib.memo_apply]; omega⟩) _
