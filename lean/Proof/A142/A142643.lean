import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142643 lists the primes congruent to 5 mod 56. -/
theorem A142643.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142643 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 5) (n - 1) : ℤ) := by
  simp only [A142643, A142643.P5680424526248210039.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142643.P5680424526248210039.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142643.P5680424526248210039.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142643.P5680424526248210039.f1, SequenceMachineLib.memo_apply]; omega⟩) _
