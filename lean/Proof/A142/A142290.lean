import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142290 lists the primes congruent to 41 mod 43. -/
theorem A142290.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142290 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 41) (n - 1) : ℤ) := by
  simp only [A142290, A142290.P4566757203383785873.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142290.P4566757203383785873.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142290.P4566757203383785873.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 43, by simp only [A142290.P4566757203383785873.f1, SequenceMachineLib.memo_apply]; omega⟩) _
