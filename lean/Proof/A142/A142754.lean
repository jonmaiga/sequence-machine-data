import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142754 lists the primes congruent to 27 mod 59. -/
theorem A142754.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142754 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 27) (n - 1) : ℤ) := by
  simp only [A142754, A142754.P5901441355332948607.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142754.P5901441355332948607.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142754.P5901441355332948607.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 32) / 59, by simp only [A142754.P5901441355332948607.f1, SequenceMachineLib.memo_apply]; omega⟩) _
