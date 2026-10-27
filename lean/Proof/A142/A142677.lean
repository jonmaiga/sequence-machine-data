import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142677 lists the primes congruent to 20 mod 57. -/
theorem A142677.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142677 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 20) (n - 1) : ℤ) := by
  simp only [A142677, A142677.P12740904497977760515.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142677.P12740904497977760515.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142677.P12740904497977760515.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142677.P12740904497977760515.f1, SequenceMachineLib.memo_apply]; omega⟩) _
