import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142299 lists the primes congruent to 17 mod 44. -/
theorem A142299.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142299 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 17) (n - 1) : ℤ) := by
  simp only [A142299, A142299.P6462142585437383439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 44 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142299.P6462142585437383439.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142299.P6462142585437383439.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 44, by simp only [A142299.P6462142585437383439.f1, SequenceMachineLib.memo_apply]; omega⟩) _
