import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142566 lists the primes congruent to 36 mod 53. -/
theorem A142566.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142566 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 36) (n - 1) : ℤ) := by
  simp only [A142566, A142566.P5463133517147334273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142566.P5463133517147334273.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142566.P5463133517147334273.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 53, by simp only [A142566.P5463133517147334273.f1, SequenceMachineLib.memo_apply]; omega⟩) _
