import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142920 lists the primes congruent to 55 mod 63. -/
theorem A142920.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142920 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 55) (n - 1) : ℤ) := by
  simp only [A142920, A142920.P902177565938556290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 55 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142920.P902177565938556290.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142920.P902177565938556290.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 63, by simp only [A142920.P902177565938556290.f1, SequenceMachineLib.memo_apply]; omega⟩) _
