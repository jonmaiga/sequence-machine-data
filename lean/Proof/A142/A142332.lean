import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142332 lists the primes congruent to 38 mod 45. -/
theorem A142332.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142332 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 38) (n - 1) : ℤ) := by
  simp only [A142332, A142332.P10873769994353950579.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142332.P10873769994353950579.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142332.P10873769994353950579.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 45, by simp only [A142332.P10873769994353950579.f1, SequenceMachineLib.memo_apply]; omega⟩) _
