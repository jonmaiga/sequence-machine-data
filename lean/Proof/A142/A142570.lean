import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142570 lists the primes congruent to 40 mod 53. -/
theorem A142570.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142570 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 40) (n - 1) : ℤ) := by
  simp only [A142570, A142570.P6421627408665633642.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142570.P6421627408665633642.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142570.P6421627408665633642.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 53, by simp only [A142570.P6421627408665633642.f1, SequenceMachineLib.memo_apply]; omega⟩) _
