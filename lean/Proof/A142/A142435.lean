import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142435 lists the primes congruent to 25 mod 49. -/
theorem A142435.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142435 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 25) (n - 1) : ℤ) := by
  simp only [A142435, A142435.P11952639995427579839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142435.P11952639995427579839.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142435.P11952639995427579839.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 24) / 49, by simp only [A142435.P11952639995427579839.f1, SequenceMachineLib.memo_apply]; omega⟩) _
