import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142410 lists the primes congruent to 37 mod 48. -/
theorem A142410.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142410 n = (Nat.nth (fun p => p.Prime ∧ p % 48 = 37) (n - 1) : ℤ) := by
  simp only [A142410, A142410.P15658897944720024963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 48 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142410.P15658897944720024963.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142410.P15658897944720024963.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 48, by simp only [A142410.P15658897944720024963.f1, SequenceMachineLib.memo_apply]; omega⟩) _
