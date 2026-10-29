import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142373 lists the primes congruent to 22 mod 47. -/
theorem A142373.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142373 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 22) (n - 1) : ℤ) := by
  simp only [A142373, A142373.P5843553424164270790.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142373.P5843553424164270790.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142373.P5843553424164270790.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142373.P5843553424164270790.f1, SequenceMachineLib.memo_apply]; omega⟩) _
