import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141994 lists the primes congruent to 18 mod 29. -/
theorem A141994.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141994 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 18) (n - 1) : ℤ) := by
  simp only [A141994, A141994.P10842819423116577708.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141994.P10842819423116577708.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141994.P10842819423116577708.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 29, by simp only [A141994.P10842819423116577708.f1, SequenceMachineLib.memo_apply]; omega⟩) _
