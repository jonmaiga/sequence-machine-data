import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142403 lists the primes congruent to 17 mod 48. -/
theorem A142403.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142403 n = (Nat.nth (fun p => p.Prime ∧ p % 48 = 17) (n - 1) : ℤ) := by
  simp only [A142403, A142403.P12333573160411279363.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 48 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142403.P12333573160411279363.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142403.P12333573160411279363.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 48, by simp only [A142403.P12333573160411279363.f1, SequenceMachineLib.memo_apply]; omega⟩) _
