import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142143 lists the primes congruent to 34 mod 37. -/
theorem A142143.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142143 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 34) (n - 1) : ℤ) := by
  simp only [A142143, A142143.P11226821550673919488.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142143.P11226821550673919488.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142143.P11226821550673919488.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 37, by simp only [A142143.P11226821550673919488.f1, SequenceMachineLib.memo_apply]; omega⟩) _
