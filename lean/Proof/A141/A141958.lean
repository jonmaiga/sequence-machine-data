import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141958 lists the primes congruent to 16 mod 27. -/
theorem A141958.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141958 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 16) (n - 1) : ℤ) := by
  simp only [A141958, A141958.P4946978575266648834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141958.P4946978575266648834.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141958.P4946978575266648834.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 27, by simp only [A141958.P4946978575266648834.f1, SequenceMachineLib.memo_apply]; omega⟩) _
