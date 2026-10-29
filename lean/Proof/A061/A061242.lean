import Prog.A061.A0612
import Proof.Lib.PrimesMod

/-- A061242 lists the primes congruent to 8 mod 9. -/
theorem A061242.anchor (n : ℕ) (hn : 1 ≤ n) :
    A061242 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 8) (n - 1) : ℤ) := by
  simp only [A061242, A061242.P14932047030331021065.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 9 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A061242.P14932047030331021065.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A061242.P14932047030331021065.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 9, by simp only [A061242.P14932047030331021065.f1, SequenceMachineLib.memo_apply]; omega⟩) _
