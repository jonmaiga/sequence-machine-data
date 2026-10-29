import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142674 lists the primes congruent to 14 mod 57. -/
theorem A142674.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142674 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 14) (n - 1) : ℤ) := by
  simp only [A142674, A142674.P12029234767476920423.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142674.P12029234767476920423.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142674.P12029234767476920423.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 43) / 57, by simp only [A142674.P12029234767476920423.f1, SequenceMachineLib.memo_apply]; omega⟩) _
