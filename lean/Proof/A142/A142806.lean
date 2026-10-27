import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142806 lists the primes congruent to 8 mod 61. -/
theorem A142806.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142806 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 8) (n - 1) : ℤ) := by
  simp only [A142806, A142806.P17008932734811522984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142806.P17008932734811522984.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142806.P17008932734811522984.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142806.P17008932734811522984.f1, SequenceMachineLib.memo_apply]; omega⟩) _
