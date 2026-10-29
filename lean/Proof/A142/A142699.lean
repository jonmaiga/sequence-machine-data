import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142699 lists the primes congruent to 55 mod 57. -/
theorem A142699.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142699 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 55) (n - 1) : ℤ) := by
  simp only [A142699, A142699.P13980201635636189815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 55 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142699.P13980201635636189815.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142699.P13980201635636189815.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 57, by simp only [A142699.P13980201635636189815.f1, SequenceMachineLib.memo_apply]; omega⟩) _
