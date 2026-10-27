import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142607 lists the primes congruent to 8 mod 55. -/
theorem A142607.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142607 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 8) (n - 1) : ℤ) := by
  simp only [A142607, A142607.P3273710044152484761.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142607.P3273710044152484761.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142607.P3273710044152484761.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142607.P3273710044152484761.f1, SequenceMachineLib.memo_apply]; omega⟩) _
