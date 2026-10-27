import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142327 lists the primes congruent to 29 mod 45. -/
theorem A142327.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142327 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 29) (n - 1) : ℤ) := by
  simp only [A142327, A142327.P4584270671583773330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142327.P4584270671583773330.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142327.P4584270671583773330.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 45, by simp only [A142327.P4584270671583773330.f1, SequenceMachineLib.memo_apply]; omega⟩) _
