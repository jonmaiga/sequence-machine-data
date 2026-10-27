import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142950 lists the primes congruent to 55 mod 64. -/
theorem A142950.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142950 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 55) (n - 1) : ℤ) := by
  simp only [A142950, A142950.P3420115073611070946.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 55 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142950.P3420115073611070946.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142950.P3420115073611070946.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 64, by simp only [A142950.P3420115073611070946.f1, SequenceMachineLib.memo_apply]; omega⟩) _
