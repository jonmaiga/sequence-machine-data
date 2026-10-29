import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142755 lists the primes congruent to 28 mod 59. -/
theorem A142755.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142755 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 28) (n - 1) : ℤ) := by
  simp only [A142755, A142755.P14456745287928612606.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142755.P14456745287928612606.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142755.P14456745287928612606.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142755.P14456745287928612606.f1, SequenceMachineLib.memo_apply]; omega⟩) _
