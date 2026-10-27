import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141924 lists the primes congruent to 20 mod 23. -/
theorem A141924.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141924 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 20) (n - 1) : ℤ) := by
  simp only [A141924, A141924.P15423694719666383040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141924.P15423694719666383040.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141924.P15423694719666383040.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 23, by simp only [A141924.P15423694719666383040.f1, SequenceMachineLib.memo_apply]; omega⟩) _
