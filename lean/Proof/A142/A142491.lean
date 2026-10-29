import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142491 lists the primes congruent to 25 mod 51. -/
theorem A142491.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142491 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 25) (n - 1) : ℤ) := by
  simp only [A142491, A142491.P9692789456208390047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142491.P9692789456208390047.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142491.P9692789456208390047.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142491.P9692789456208390047.f1, SequenceMachineLib.memo_apply]; omega⟩) _
