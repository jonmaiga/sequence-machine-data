import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142900 lists the primes congruent to 20 mod 63. -/
theorem A142900.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142900 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 20) (n - 1) : ℤ) := by
  simp only [A142900, A142900.P15501536379614215935.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142900.P15501536379614215935.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142900.P15501536379614215935.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142900.P15501536379614215935.f1, SequenceMachineLib.memo_apply]; omega⟩) _
