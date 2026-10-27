import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142783 lists the primes congruent to 56 mod 59. -/
theorem A142783.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142783 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 56) (n - 1) : ℤ) := by
  simp only [A142783, A142783.P5673115641976607910.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 56 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142783.P5673115641976607910.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142783.P5673115641976607910.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 59, by simp only [A142783.P5673115641976607910.f1, SequenceMachineLib.memo_apply]; omega⟩) _
