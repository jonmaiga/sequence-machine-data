import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142742 lists the primes congruent to 15 mod 59. -/
theorem A142742.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142742 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 15) (n - 1) : ℤ) := by
  simp only [A142742, A142742.P13352521078894166401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142742.P13352521078894166401.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142742.P13352521078894166401.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142742.P13352521078894166401.f1, SequenceMachineLib.memo_apply]; omega⟩) _
