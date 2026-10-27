import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142798 lists the primes congruent to 53 mod 60. -/
theorem A142798.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142798 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 53) (n - 1) : ℤ) := by
  simp only [A142798, A142798.P441370703986699577.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 60 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142798.P441370703986699577.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142798.P441370703986699577.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 60, by simp only [A142798.P441370703986699577.f1, SequenceMachineLib.memo_apply]; omega⟩) _
