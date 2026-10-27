import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141919 lists the primes congruent to 15 mod 23. -/
theorem A141919.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141919 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 15) (n - 1) : ℤ) := by
  simp only [A141919, A141919.P13315905829934009233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141919.P13315905829934009233.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141919.P13315905829934009233.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 23, by simp only [A141919.P13315905829934009233.f1, SequenceMachineLib.memo_apply]; omega⟩) _
