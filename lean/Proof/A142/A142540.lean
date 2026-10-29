import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142540 lists the primes congruent to 10 mod 53. -/
theorem A142540.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142540 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 10) (n - 1) : ℤ) := by
  simp only [A142540, A142540.P2217964675190997392.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142540.P2217964675190997392.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142540.P2217964675190997392.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142540.P2217964675190997392.f1, SequenceMachineLib.memo_apply]; omega⟩) _
