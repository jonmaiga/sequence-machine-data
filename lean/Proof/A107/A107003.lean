import Prog.A107.A1070
import Proof.Lib.PrimesMod

/-- A107003 lists the primes congruent to 5 mod 24. -/
theorem A107003.anchor (n : ℕ) (hn : 1 ≤ n) :
    A107003 n = (Nat.nth (fun p => p.Prime ∧ p % 24 = 5) (n - 1) : ℤ) := by
  simp only [A107003, A107003.P5855654401320172036.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 24 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A107003.P5855654401320172036.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A107003.P5855654401320172036.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 24, by simp only [A107003.P5855654401320172036.f1, SequenceMachineLib.memo_apply]; omega⟩) _
