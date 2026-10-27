import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142771 lists the primes congruent to 44 mod 59. -/
theorem A142771.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142771 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 44) (n - 1) : ℤ) := by
  simp only [A142771, A142771.P10920528627363896590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142771.P10920528627363896590.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142771.P10920528627363896590.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 59, by simp only [A142771.P10920528627363896590.f1, SequenceMachineLib.memo_apply]; omega⟩) _
