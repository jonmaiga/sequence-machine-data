import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142830 lists the primes congruent to 32 mod 61. -/
theorem A142830.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142830 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 32) (n - 1) : ℤ) := by
  simp only [A142830, A142830.P13461365843527250451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142830.P13461365843527250451.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142830.P13461365843527250451.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 29) / 61, by simp only [A142830.P13461365843527250451.f1, SequenceMachineLib.memo_apply]; omega⟩) _
