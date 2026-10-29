import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142331 lists the primes congruent to 37 mod 45. -/
theorem A142331.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142331 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 37) (n - 1) : ℤ) := by
  simp only [A142331, A142331.P15071362400208504778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142331.P15071362400208504778.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142331.P15071362400208504778.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 45, by simp only [A142331.P15071362400208504778.f1, SequenceMachineLib.memo_apply]; omega⟩) _
