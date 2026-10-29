import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142291 lists the primes congruent to 42 mod 43. -/
theorem A142291.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142291 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 42) (n - 1) : ℤ) := by
  simp only [A142291, A142291.P6826586550507312059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 42 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142291.P6826586550507312059.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142291.P6826586550507312059.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 43, by simp only [A142291.P6826586550507312059.f1, SequenceMachineLib.memo_apply]; omega⟩) _
