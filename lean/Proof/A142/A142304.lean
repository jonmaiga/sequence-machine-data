import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142304 lists the primes congruent to 27 mod 44. -/
theorem A142304.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142304 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 27) (n - 1) : ℤ) := by
  simp only [A142304, A142304.P2644614537605367875.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142304.P2644614537605367875.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142304.P2644614537605367875.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 44, by simp only [A142304.P2644614537605367875.f1, SequenceMachineLib.memo_apply]; omega⟩) _
