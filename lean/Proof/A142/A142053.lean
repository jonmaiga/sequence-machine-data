import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142053 lists the primes congruent to 7 mod 33. -/
theorem A142053.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142053 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 7) (n - 1) : ℤ) := by
  simp only [A142053, A142053.P13334455639310119624.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 33 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142053.P13334455639310119624.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142053.P13334455639310119624.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 33, by simp only [A142053.P13334455639310119624.f1, SequenceMachineLib.memo_apply]; omega⟩) _
