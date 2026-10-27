import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142910 lists the primes congruent to 38 mod 63. -/
theorem A142910.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142910 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 38) (n - 1) : ℤ) := by
  simp only [A142910, A142910.P5060616705458251258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142910.P5060616705458251258.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142910.P5060616705458251258.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 25) / 63, by simp only [A142910.P5060616705458251258.f1, SequenceMachineLib.memo_apply]; omega⟩) _
