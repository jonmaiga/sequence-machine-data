import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142127 lists the primes congruent to 18 mod 37. -/
theorem A142127.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142127 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 18) (n - 1) : ℤ) := by
  simp only [A142127, A142127.P18163112966649201267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142127.P18163112966649201267.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142127.P18163112966649201267.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142127.P18163112966649201267.f1, SequenceMachineLib.memo_apply]; omega⟩) _
