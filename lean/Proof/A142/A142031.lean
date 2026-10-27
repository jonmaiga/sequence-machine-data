import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142031 lists the primes congruent to 27 mod 31. -/
theorem A142031.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142031 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 27) (n - 1) : ℤ) := by
  simp only [A142031, A142031.P8145539369088862934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142031.P8145539369088862934.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142031.P8145539369088862934.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 31, by simp only [A142031.P8145539369088862934.f1, SequenceMachineLib.memo_apply]; omega⟩) _
