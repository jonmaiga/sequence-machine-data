import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142845 lists the primes congruent to 47 mod 61. -/
theorem A142845.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142845 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 47) (n - 1) : ℤ) := by
  simp only [A142845, A142845.P9259017569777467203.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142845.P9259017569777467203.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142845.P9259017569777467203.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142845.P9259017569777467203.f1, SequenceMachineLib.memo_apply]; omega⟩) _
