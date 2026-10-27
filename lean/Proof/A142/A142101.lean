import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142101 lists the primes congruent to 5 mod 36. -/
theorem A142101.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142101 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 5) (n - 1) : ℤ) := by
  simp only [A142101, A142101.P13528665498652263920.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 36 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142101.P13528665498652263920.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142101.P13528665498652263920.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 36, by simp only [A142101.P13528665498652263920.f1, SequenceMachineLib.memo_apply]; omega⟩) _
