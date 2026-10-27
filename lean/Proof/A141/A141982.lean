import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141982 lists the primes congruent to 6 mod 29. -/
theorem A141982.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141982 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 6) (n - 1) : ℤ) := by
  simp only [A141982, A141982.P16005638060249871987.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141982.P16005638060249871987.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141982.P16005638060249871987.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141982.P16005638060249871987.f1, SequenceMachineLib.memo_apply]; omega⟩) _
