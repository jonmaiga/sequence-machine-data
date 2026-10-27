import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142064 lists the primes congruent to 26 mod 33. -/
theorem A142064.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142064 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 26) (n - 1) : ℤ) := by
  simp only [A142064, A142064.P13407911316614423869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 33 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142064.P13407911316614423869.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142064.P13407911316614423869.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 33, by simp only [A142064.P13407911316614423869.f1, SequenceMachineLib.memo_apply]; omega⟩) _
