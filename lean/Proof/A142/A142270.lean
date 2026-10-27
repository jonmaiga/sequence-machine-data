import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142270 lists the primes congruent to 21 mod 43. -/
theorem A142270.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142270 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 21) (n - 1) : ℤ) := by
  simp only [A142270, A142270.P16794312820006790597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142270.P16794312820006790597.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142270.P16794312820006790597.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142270.P16794312820006790597.f1, SequenceMachineLib.memo_apply]; omega⟩) _
