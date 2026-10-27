import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141963 lists the primes congruent to 23 mod 27. -/
theorem A141963.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141963 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 23) (n - 1) : ℤ) := by
  simp only [A141963, A141963.P16602494174771806076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141963.P16602494174771806076.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141963.P16602494174771806076.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 27, by simp only [A141963.P16602494174771806076.f1, SequenceMachineLib.memo_apply]; omega⟩) _
