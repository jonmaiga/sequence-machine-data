import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142182 lists the primes congruent to 38 mod 39. -/
theorem A142182.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142182 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 38) (n - 1) : ℤ) := by
  simp only [A142182, A142182.P6033792183540617985.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142182.P6033792183540617985.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142182.P6033792183540617985.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 39, by simp only [A142182.P6033792183540617985.f1, SequenceMachineLib.memo_apply]; omega⟩) _
