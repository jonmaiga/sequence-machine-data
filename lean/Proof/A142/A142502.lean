import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142502 lists the primes congruent to 43 mod 51. -/
theorem A142502.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142502 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 43) (n - 1) : ℤ) := by
  simp only [A142502, A142502.P2963416091824763281.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142502.P2963416091824763281.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142502.P2963416091824763281.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 51, by simp only [A142502.P2963416091824763281.f1, SequenceMachineLib.memo_apply]; omega⟩) _
