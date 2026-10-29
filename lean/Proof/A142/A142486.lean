import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142486 lists the primes congruent to 16 mod 51. -/
theorem A142486.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142486 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 16) (n - 1) : ℤ) := by
  simp only [A142486, A142486.P4779644728905971772.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142486.P4779644728905971772.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142486.P4779644728905971772.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142486.P4779644728905971772.f1, SequenceMachineLib.memo_apply]; omega⟩) _
