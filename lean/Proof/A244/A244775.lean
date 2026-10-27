import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244775 lists the primes whose decimal expansion ends in 79. -/
theorem A244775.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244775 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 79) (n - 1) : ℤ) := by
  simp only [A244775, A244775.P13533006808998873907.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 79 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244775.P13533006808998873907.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244775.P13533006808998873907.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 100, by simp only [A244775.P13533006808998873907.f1, SequenceMachineLib.memo_apply]; omega⟩) _
