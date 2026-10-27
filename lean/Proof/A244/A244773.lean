import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244773 lists the primes whose decimal expansion ends in 67. -/
theorem A244773.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244773 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 67) (n - 1) : ℤ) := by
  simp only [A244773, A244773.P12702196863288574492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 67 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244773.P12702196863288574492.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244773.P12702196863288574492.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 33) / 100, by simp only [A244773.P12702196863288574492.f1, SequenceMachineLib.memo_apply]; omega⟩) _
