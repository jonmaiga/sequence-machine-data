import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142776 lists the primes congruent to 49 mod 59. -/
theorem A142776.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142776 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 49) (n - 1) : ℤ) := by
  simp only [A142776, A142776.P14603351713955366249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142776.P14603351713955366249.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142776.P14603351713955366249.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 59, by simp only [A142776.P14603351713955366249.f1, SequenceMachineLib.memo_apply]; omega⟩) _
