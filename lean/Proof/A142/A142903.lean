import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142903 lists the primes congruent to 25 mod 63. -/
theorem A142903.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142903 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 25) (n - 1) : ℤ) := by
  simp only [A142903, A142903.P3956129544153980981.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142903.P3956129544153980981.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142903.P3956129544153980981.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142903.P3956129544153980981.f1, SequenceMachineLib.memo_apply]; omega⟩) _
