import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142899 lists the primes congruent to 19 mod 63. -/
theorem A142899.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142899 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 19) (n - 1) : ℤ) := by
  simp only [A142899, A142899.P5107742842111695539.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142899.P5107742842111695539.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142899.P5107742842111695539.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142899.P5107742842111695539.f1, SequenceMachineLib.memo_apply]; omega⟩) _
