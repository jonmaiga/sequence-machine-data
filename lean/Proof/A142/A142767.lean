import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142767 lists the primes congruent to 40 mod 59. -/
theorem A142767.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142767 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 40) (n - 1) : ℤ) := by
  simp only [A142767, A142767.P10349622226339058301.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142767.P10349622226339058301.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142767.P10349622226339058301.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 59, by simp only [A142767.P10349622226339058301.f1, SequenceMachineLib.memo_apply]; omega⟩) _
