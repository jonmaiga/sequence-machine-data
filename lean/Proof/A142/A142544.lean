import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142544 lists the primes congruent to 14 mod 53. -/
theorem A142544.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142544 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 14) (n - 1) : ℤ) := by
  simp only [A142544, A142544.P2515203654304685136.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142544.P2515203654304685136.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142544.P2515203654304685136.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142544.P2515203654304685136.f1, SequenceMachineLib.memo_apply]; omega⟩) _
