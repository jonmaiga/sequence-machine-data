import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142034 lists the primes congruent to 30 mod 31. -/
theorem A142034.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142034 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 30) (n - 1) : ℤ) := by
  simp only [A142034, A142034.P16484057784270041110.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142034.P16484057784270041110.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142034.P16484057784270041110.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 31, by simp only [A142034.P16484057784270041110.f1, SequenceMachineLib.memo_apply]; omega⟩) _
