import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142787 lists the primes congruent to 13 mod 60. -/
theorem A142787.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142787 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 13) (n - 1) : ℤ) := by
  simp only [A142787, A142787.P6426569186505720714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 60 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142787.P6426569186505720714.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142787.P6426569186505720714.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 60, by simp only [A142787.P6426569186505720714.f1, SequenceMachineLib.memo_apply]; omega⟩) _
