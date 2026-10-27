import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142296 lists the primes congruent to 9 mod 44. -/
theorem A142296.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142296 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 9) (n - 1) : ℤ) := by
  simp only [A142296, A142296.P7549627745790358144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 44 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142296.P7549627745790358144.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142296.P7549627745790358144.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 44, by simp only [A142296.P7549627745790358144.f1, SequenceMachineLib.memo_apply]; omega⟩) _
