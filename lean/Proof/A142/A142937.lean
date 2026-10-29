import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142937 lists the primes congruent to 27 mod 64. -/
theorem A142937.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142937 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 27) (n - 1) : ℤ) := by
  simp only [A142937, A142937.P5495879948250332715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142937.P5495879948250332715.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142937.P5495879948250332715.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142937.P5495879948250332715.f1, SequenceMachineLib.memo_apply]; omega⟩) _
