import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142391 lists the primes congruent to 40 mod 47. -/
theorem A142391.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142391 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 40) (n - 1) : ℤ) := by
  simp only [A142391, A142391.P6690089389627483051.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142391.P6690089389627483051.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142391.P6690089389627483051.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 47, by simp only [A142391.P6690089389627483051.f1, SequenceMachineLib.memo_apply]; omega⟩) _
