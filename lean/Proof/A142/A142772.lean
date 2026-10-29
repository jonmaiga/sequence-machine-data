import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142772 lists the primes congruent to 45 mod 59. -/
theorem A142772.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142772 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 45) (n - 1) : ℤ) := by
  simp only [A142772, A142772.P9868224480306720378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142772.P9868224480306720378.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142772.P9868224480306720378.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 14) / 59, by simp only [A142772.P9868224480306720378.f1, SequenceMachineLib.memo_apply]; omega⟩) _
