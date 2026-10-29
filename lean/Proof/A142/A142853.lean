import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142853 lists the primes congruent to 55 mod 61. -/
theorem A142853.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142853 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 55) (n - 1) : ℤ) := by
  simp only [A142853, A142853.P6212993732306037194.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 55 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142853.P6212993732306037194.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142853.P6212993732306037194.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 61, by simp only [A142853.P6212993732306037194.f1, SequenceMachineLib.memo_apply]; omega⟩) _
