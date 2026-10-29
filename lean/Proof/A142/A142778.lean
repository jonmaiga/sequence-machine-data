import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142778 lists the primes congruent to 51 mod 59. -/
theorem A142778.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142778 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 51) (n - 1) : ℤ) := by
  simp only [A142778, A142778.P17241945090735646841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 51 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142778.P17241945090735646841.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142778.P17241945090735646841.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 59, by simp only [A142778.P17241945090735646841.f1, SequenceMachineLib.memo_apply]; omega⟩) _
