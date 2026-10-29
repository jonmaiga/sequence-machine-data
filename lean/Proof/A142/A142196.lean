import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142196 lists the primes congruent to 33 mod 40. -/
theorem A142196.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142196 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 33) (n - 1) : ℤ) := by
  simp only [A142196, A142196.P1243520336392400460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142196.P1243520336392400460.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142196.P1243520336392400460.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 40, by simp only [A142196.P1243520336392400460.f1, SequenceMachineLib.memo_apply]; omega⟩) _
