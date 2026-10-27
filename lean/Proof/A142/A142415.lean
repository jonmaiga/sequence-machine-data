import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142415 lists the primes congruent to 2 mod 49. -/
theorem A142415.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142415 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 2) (n - 1) : ℤ) := by
  simp only [A142415, A142415.P2169116940538813865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142415.P2169116940538813865.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142415.P2169116940538813865.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142415.P2169116940538813865.f1, SequenceMachineLib.memo_apply]; omega⟩) _
