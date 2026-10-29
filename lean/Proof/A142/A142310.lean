import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142310 lists the primes congruent to 41 mod 44. -/
theorem A142310.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142310 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 41) (n - 1) : ℤ) := by
  simp only [A142310, A142310.P17788548688774827961.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142310.P17788548688774827961.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142310.P17788548688774827961.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 44, by simp only [A142310.P17788548688774827961.f1, SequenceMachineLib.memo_apply]; omega⟩) _
