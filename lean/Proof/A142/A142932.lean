import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142932 lists the primes congruent to 15 mod 64. -/
theorem A142932.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142932 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 15) (n - 1) : ℤ) := by
  simp only [A142932, A142932.P10153030057382610172.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142932.P10153030057382610172.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142932.P10153030057382610172.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142932.P10153030057382610172.f1, SequenceMachineLib.memo_apply]; omega⟩) _
