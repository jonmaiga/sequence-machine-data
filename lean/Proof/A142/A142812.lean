import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142812 lists the primes congruent to 14 mod 61. -/
theorem A142812.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142812 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 14) (n - 1) : ℤ) := by
  simp only [A142812, A142812.P4748277480661010641.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142812.P4748277480661010641.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142812.P4748277480661010641.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142812.P4748277480661010641.f1, SequenceMachineLib.memo_apply]; omega⟩) _
