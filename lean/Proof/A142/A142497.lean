import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142497 lists the primes congruent to 35 mod 51. -/
theorem A142497.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142497 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 35) (n - 1) : ℤ) := by
  simp only [A142497, A142497.P13727909841269271743.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142497.P13727909841269271743.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142497.P13727909841269271743.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 51, by simp only [A142497.P13727909841269271743.f1, SequenceMachineLib.memo_apply]; omega⟩) _
