import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141995 lists the primes congruent to 19 mod 29. -/
theorem A141995.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141995 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 19) (n - 1) : ℤ) := by
  simp only [A141995, A141995.P6291012753824342578.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141995.P6291012753824342578.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141995.P6291012753824342578.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 29, by simp only [A141995.P6291012753824342578.f1, SequenceMachineLib.memo_apply]; omega⟩) _
