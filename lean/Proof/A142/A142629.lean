import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142629 lists the primes congruent to 39 mod 55. -/
theorem A142629.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142629 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 39) (n - 1) : ℤ) := by
  simp only [A142629, A142629.P3504410832996168144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142629.P3504410832996168144.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142629.P3504410832996168144.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 55, by simp only [A142629.P3504410832996168144.f1, SequenceMachineLib.memo_apply]; omega⟩) _
