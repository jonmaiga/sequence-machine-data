import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142393 lists the primes congruent to 42 mod 47. -/
theorem A142393.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142393 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 42) (n - 1) : ℤ) := by
  simp only [A142393, A142393.P585495198988390091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 42 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142393.P585495198988390091.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142393.P585495198988390091.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 47, by simp only [A142393.P585495198988390091.f1, SequenceMachineLib.memo_apply]; omega⟩) _
