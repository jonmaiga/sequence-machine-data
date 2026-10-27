import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142008 lists the primes congruent to 4 mod 31. -/
theorem A142008.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142008 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 4) (n - 1) : ℤ) := by
  simp only [A142008, A142008.P2886295417472548207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142008.P2886295417472548207.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142008.P2886295417472548207.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142008.P2886295417472548207.f1, SequenceMachineLib.memo_apply]; omega⟩) _
