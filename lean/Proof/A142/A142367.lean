import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142367 lists the primes congruent to 16 mod 47. -/
theorem A142367.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142367 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 16) (n - 1) : ℤ) := by
  simp only [A142367, A142367.P17124882875609087229.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142367.P17124882875609087229.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142367.P17124882875609087229.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 31) / 47, by simp only [A142367.P17124882875609087229.f1, SequenceMachineLib.memo_apply]; omega⟩) _
