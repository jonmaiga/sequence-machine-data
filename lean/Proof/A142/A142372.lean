import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142372 lists the primes congruent to 21 mod 47. -/
theorem A142372.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142372 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 21) (n - 1) : ℤ) := by
  simp only [A142372, A142372.P1169779385598995932.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142372.P1169779385598995932.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142372.P1169779385598995932.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142372.P1169779385598995932.f1, SequenceMachineLib.memo_apply]; omega⟩) _
