import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142623 lists the primes congruent to 31 mod 55. -/
theorem A142623.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142623 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 31) (n - 1) : ℤ) := by
  simp only [A142623, A142623.P3635120260693577370.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142623.P3635120260693577370.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142623.P3635120260693577370.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 24) / 55, by simp only [A142623.P3635120260693577370.f1, SequenceMachineLib.memo_apply]; omega⟩) _
