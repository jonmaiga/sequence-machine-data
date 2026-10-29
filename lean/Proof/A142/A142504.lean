import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142504 lists the primes congruent to 46 mod 51. -/
theorem A142504.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142504 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 46) (n - 1) : ℤ) := by
  simp only [A142504, A142504.P16442748406109015156.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142504.P16442748406109015156.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142504.P16442748406109015156.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 51, by simp only [A142504.P16442748406109015156.f1, SequenceMachineLib.memo_apply]; omega⟩) _
