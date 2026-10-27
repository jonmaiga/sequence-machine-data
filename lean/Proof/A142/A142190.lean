import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142190 lists the primes congruent to 19 mod 40. -/
theorem A142190.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142190 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 19) (n - 1) : ℤ) := by
  simp only [A142190, A142190.P13230639613033854165.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 40 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142190.P13230639613033854165.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142190.P13230639613033854165.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 40, by simp only [A142190.P13230639613033854165.f1, SequenceMachineLib.memo_apply]; omega⟩) _
