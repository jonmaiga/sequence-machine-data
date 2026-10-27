import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142579 lists the primes congruent to 49 mod 53. -/
theorem A142579.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142579 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 49) (n - 1) : ℤ) := by
  simp only [A142579, A142579.P9845563896040826654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142579.P9845563896040826654.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142579.P9845563896040826654.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 53, by simp only [A142579.P9845563896040826654.f1, SequenceMachineLib.memo_apply]; omega⟩) _
