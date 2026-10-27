import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142918 lists the primes congruent to 52 mod 63. -/
theorem A142918.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142918 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 52) (n - 1) : ℤ) := by
  simp only [A142918, A142918.P4315972081210890278.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 52 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142918.P4315972081210890278.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142918.P4315972081210890278.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 63, by simp only [A142918.P4315972081210890278.f1, SequenceMachineLib.memo_apply]; omega⟩) _
