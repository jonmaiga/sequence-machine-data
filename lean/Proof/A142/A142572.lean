import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142572 lists the primes congruent to 42 mod 53. -/
theorem A142572.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142572 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 42) (n - 1) : ℤ) := by
  simp only [A142572, A142572.P13859309934733515950.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 42 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142572.P13859309934733515950.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142572.P13859309934733515950.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 53, by simp only [A142572.P13859309934733515950.f1, SequenceMachineLib.memo_apply]; omega⟩) _
