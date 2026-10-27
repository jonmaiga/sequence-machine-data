import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142582 lists the primes congruent to 52 mod 53. -/
theorem A142582.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142582 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 52) (n - 1) : ℤ) := by
  simp only [A142582, A142582.P1423104978536918347.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 52 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142582.P1423104978536918347.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142582.P1423104978536918347.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 53, by simp only [A142582.P1423104978536918347.f1, SequenceMachineLib.memo_apply]; omega⟩) _
