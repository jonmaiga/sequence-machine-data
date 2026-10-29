import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142317 lists the primes congruent to 11 mod 45. -/
theorem A142317.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142317 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 11) (n - 1) : ℤ) := by
  simp only [A142317, A142317.P7412645523689734447.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142317.P7412645523689734447.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142317.P7412645523689734447.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142317.P7412645523689734447.f1, SequenceMachineLib.memo_apply]; omega⟩) _
