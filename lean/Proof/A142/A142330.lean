import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142330 lists the primes congruent to 34 mod 45. -/
theorem A142330.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142330 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 34) (n - 1) : ℤ) := by
  simp only [A142330, A142330.P1189926326019420080.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142330.P1189926326019420080.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142330.P1189926326019420080.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 45, by simp only [A142330.P1189926326019420080.f1, SequenceMachineLib.memo_apply]; omega⟩) _
