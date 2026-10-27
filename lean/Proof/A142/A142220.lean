import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142220 lists the primes congruent to 23 mod 41. -/
theorem A142220.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142220 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 23) (n - 1) : ℤ) := by
  simp only [A142220, A142220.P16687407604773362095.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142220.P16687407604773362095.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142220.P16687407604773362095.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 41, by simp only [A142220.P16687407604773362095.f1, SequenceMachineLib.memo_apply]; omega⟩) _
