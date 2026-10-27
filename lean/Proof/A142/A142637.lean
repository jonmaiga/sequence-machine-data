import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142637 lists the primes congruent to 51 mod 55. -/
theorem A142637.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142637 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 51) (n - 1) : ℤ) := by
  simp only [A142637, A142637.P7459249331053449661.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 51 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142637.P7459249331053449661.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142637.P7459249331053449661.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 55, by simp only [A142637.P7459249331053449661.f1, SequenceMachineLib.memo_apply]; omega⟩) _
