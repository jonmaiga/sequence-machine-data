import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142560 lists the primes congruent to 30 mod 53. -/
theorem A142560.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142560 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 30) (n - 1) : ℤ) := by
  simp only [A142560, A142560.P2547294110501529911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142560.P2547294110501529911.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142560.P2547294110501529911.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 53, by simp only [A142560.P2547294110501529911.f1, SequenceMachineLib.memo_apply]; omega⟩) _
