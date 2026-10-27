import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142944 lists the primes congruent to 43 mod 64. -/
theorem A142944.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142944 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 43) (n - 1) : ℤ) := by
  simp only [A142944, A142944.P5862644719263893988.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142944.P5862644719263893988.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142944.P5862644719263893988.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 64, by simp only [A142944.P5862644719263893988.f1, SequenceMachineLib.memo_apply]; omega⟩) _
