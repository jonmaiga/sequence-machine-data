import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142824 lists the primes congruent to 26 mod 61. -/
theorem A142824.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142824 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 26) (n - 1) : ℤ) := by
  simp only [A142824, A142824.P1235275182454826355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142824.P1235275182454826355.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142824.P1235275182454826355.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142824.P1235275182454826355.f1, SequenceMachineLib.memo_apply]; omega⟩) _
