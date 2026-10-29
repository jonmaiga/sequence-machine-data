import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142335 lists the primes congruent to 44 mod 45. -/
theorem A142335.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142335 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 44) (n - 1) : ℤ) := by
  simp only [A142335, A142335.P11028733541637049095.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142335.P11028733541637049095.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142335.P11028733541637049095.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 45, by simp only [A142335.P11028733541637049095.f1, SequenceMachineLib.memo_apply]; omega⟩) _
