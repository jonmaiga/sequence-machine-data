import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142033 lists the primes congruent to 29 mod 31. -/
theorem A142033.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142033 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 29) (n - 1) : ℤ) := by
  simp only [A142033, A142033.P5035171021861625087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142033.P5035171021861625087.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142033.P5035171021861625087.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 31, by simp only [A142033.P5035171021861625087.f1, SequenceMachineLib.memo_apply]; omega⟩) _
