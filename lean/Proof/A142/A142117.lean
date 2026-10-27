import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142117 lists the primes congruent to 8 mod 37. -/
theorem A142117.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142117 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 8) (n - 1) : ℤ) := by
  simp only [A142117, A142117.P3270763359279736161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142117.P3270763359279736161.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142117.P3270763359279736161.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142117.P3270763359279736161.f1, SequenceMachineLib.memo_apply]; omega⟩) _
