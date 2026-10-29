import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142919 lists the primes congruent to 53 mod 63. -/
theorem A142919.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142919 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 53) (n - 1) : ℤ) := by
  simp only [A142919, A142919.P2810603811300485717.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142919.P2810603811300485717.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142919.P2810603811300485717.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 63, by simp only [A142919.P2810603811300485717.f1, SequenceMachineLib.memo_apply]; omega⟩) _
