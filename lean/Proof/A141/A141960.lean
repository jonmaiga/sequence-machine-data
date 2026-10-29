import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141960 lists the primes congruent to 19 mod 27. -/
theorem A141960.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141960 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 19) (n - 1) : ℤ) := by
  simp only [A141960, A141960.P4162467210023989627.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141960.P4162467210023989627.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141960.P4162467210023989627.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 27, by simp only [A141960.P4162467210023989627.f1, SequenceMachineLib.memo_apply]; omega⟩) _
