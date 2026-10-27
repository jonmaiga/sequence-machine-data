import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142833 lists the primes congruent to 35 mod 61. -/
theorem A142833.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142833 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 35) (n - 1) : ℤ) := by
  simp only [A142833, A142833.P15840218021613281995.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142833.P15840218021613281995.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142833.P15840218021613281995.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 26) / 61, by simp only [A142833.P15840218021613281995.f1, SequenceMachineLib.memo_apply]; omega⟩) _
