import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142380 lists the primes congruent to 29 mod 47. -/
theorem A142380.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142380 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 29) (n - 1) : ℤ) := by
  simp only [A142380, A142380.P13151873305960099680.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142380.P13151873305960099680.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142380.P13151873305960099680.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 47, by simp only [A142380.P13151873305960099680.f1, SequenceMachineLib.memo_apply]; omega⟩) _
