import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142422 lists the primes congruent to 10 mod 49. -/
theorem A142422.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142422 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 10) (n - 1) : ℤ) := by
  simp only [A142422, A142422.P15421781261087999992.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142422.P15421781261087999992.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142422.P15421781261087999992.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142422.P15421781261087999992.f1, SequenceMachineLib.memo_apply]; omega⟩) _
