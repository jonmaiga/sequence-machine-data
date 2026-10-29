import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142912 lists the primes congruent to 41 mod 63. -/
theorem A142912.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142912 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 41) (n - 1) : ℤ) := by
  simp only [A142912, A142912.P7108346973952550342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142912.P7108346973952550342.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142912.P7108346973952550342.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 22) / 63, by simp only [A142912.P7108346973952550342.f1, SequenceMachineLib.memo_apply]; omega⟩) _
