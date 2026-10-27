import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142575 lists the primes congruent to 45 mod 53. -/
theorem A142575.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142575 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 45) (n - 1) : ℤ) := by
  simp only [A142575, A142575.P6606832954996549449.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142575.P6606832954996549449.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142575.P6606832954996549449.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 53, by simp only [A142575.P6606832954996549449.f1, SequenceMachineLib.memo_apply]; omega⟩) _
