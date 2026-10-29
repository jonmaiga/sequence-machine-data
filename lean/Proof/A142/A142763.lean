import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142763 lists the primes congruent to 36 mod 59. -/
theorem A142763.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142763 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 36) (n - 1) : ℤ) := by
  simp only [A142763, A142763.P10451423582178210377.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142763.P10451423582178210377.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142763.P10451423582178210377.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 59, by simp only [A142763.P10451423582178210377.f1, SequenceMachineLib.memo_apply]; omega⟩) _
