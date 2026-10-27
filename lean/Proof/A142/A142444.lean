import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142444 lists the primes congruent to 36 mod 49. -/
theorem A142444.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142444 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 36) (n - 1) : ℤ) := by
  simp only [A142444, A142444.P12046304224913857930.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142444.P12046304224913857930.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142444.P12046304224913857930.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 49, by simp only [A142444.P12046304224913857930.f1, SequenceMachineLib.memo_apply]; omega⟩) _
