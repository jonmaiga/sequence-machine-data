import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142640 lists the primes congruent to 54 mod 55. -/
theorem A142640.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142640 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 54) (n - 1) : ℤ) := by
  simp only [A142640, A142640.P4253277242487749916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 54 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142640.P4253277242487749916.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142640.P4253277242487749916.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 55, by simp only [A142640.P4253277242487749916.f1, SequenceMachineLib.memo_apply]; omega⟩) _
