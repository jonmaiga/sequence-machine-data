import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142199 lists the primes congruent to 2 mod 41. -/
theorem A142199.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142199 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 2) (n - 1) : ℤ) := by
  simp only [A142199, A142199.P6837506524554160366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142199.P6837506524554160366.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142199.P6837506524554160366.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142199.P6837506524554160366.f1, SequenceMachineLib.memo_apply]; omega⟩) _
