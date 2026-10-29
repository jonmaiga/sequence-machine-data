import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142565 lists the primes congruent to 35 mod 53. -/
theorem A142565.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142565 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 35) (n - 1) : ℤ) := by
  simp only [A142565, A142565.P15807843790863738585.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142565.P15807843790863738585.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142565.P15807843790863738585.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 53, by simp only [A142565.P15807843790863738585.f1, SequenceMachineLib.memo_apply]; omega⟩) _
