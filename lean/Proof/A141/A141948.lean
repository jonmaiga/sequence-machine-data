import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141948 lists the primes congruent to 1 mod 27. -/
theorem A141948.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141948 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 1) (n - 1) : ℤ) := by
  simp only [A141948, A141948.P14091508666294411149.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141948.P14091508666294411149.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141948.P14091508666294411149.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141948.P14091508666294411149.f1, SequenceMachineLib.memo_apply]; omega⟩) _
