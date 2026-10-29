import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142134 lists the primes congruent to 25 mod 37. -/
theorem A142134.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142134 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 25) (n - 1) : ℤ) := by
  simp only [A142134, A142134.P4536532517590107191.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142134.P4536532517590107191.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142134.P4536532517590107191.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 37, by simp only [A142134.P4536532517590107191.f1, SequenceMachineLib.memo_apply]; omega⟩) _
