import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142217 lists the primes congruent to 20 mod 41. -/
theorem A142217.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142217 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 20) (n - 1) : ℤ) := by
  simp only [A142217, A142217.P13905811482008414745.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142217.P13905811482008414745.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142217.P13905811482008414745.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142217.P13905811482008414745.f1, SequenceMachineLib.memo_apply]; omega⟩) _
