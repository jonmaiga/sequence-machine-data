import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141953 lists the primes congruent to 8 mod 27. -/
theorem A141953.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141953 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 8) (n - 1) : ℤ) := by
  simp only [A141953, A141953.P1594386319472158232.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141953.P1594386319472158232.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141953.P1594386319472158232.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141953.P1594386319472158232.f1, SequenceMachineLib.memo_apply]; omega⟩) _
