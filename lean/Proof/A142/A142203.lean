import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142203 lists the primes congruent to 6 mod 41. -/
theorem A142203.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142203 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 6) (n - 1) : ℤ) := by
  simp only [A142203, A142203.P6531071673318381671.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142203.P6531071673318381671.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142203.P6531071673318381671.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142203.P6531071673318381671.f1, SequenceMachineLib.memo_apply]; omega⟩) _
