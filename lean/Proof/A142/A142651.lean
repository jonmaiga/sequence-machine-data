import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142651 lists the primes congruent to 25 mod 56. -/
theorem A142651.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142651 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 25) (n - 1) : ℤ) := by
  simp only [A142651, A142651.P14651372177585332128.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142651.P14651372177585332128.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142651.P14651372177585332128.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 31) / 56, by simp only [A142651.P14651372177585332128.f1, SequenceMachineLib.memo_apply]; omega⟩) _
