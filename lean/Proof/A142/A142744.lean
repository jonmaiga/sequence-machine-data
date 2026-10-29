import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142744 lists the primes congruent to 17 mod 59. -/
theorem A142744.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142744 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 17) (n - 1) : ℤ) := by
  simp only [A142744, A142744.P16905080705357753281.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142744.P16905080705357753281.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142744.P16905080705357753281.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 42) / 59, by simp only [A142744.P16905080705357753281.f1, SequenceMachineLib.memo_apply]; omega⟩) _
