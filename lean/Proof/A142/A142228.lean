import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142228 lists the primes congruent to 31 mod 41. -/
theorem A142228.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142228 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 31) (n - 1) : ℤ) := by
  simp only [A142228, A142228.P4324407765704992455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142228.P4324407765704992455.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142228.P4324407765704992455.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 41, by simp only [A142228.P4324407765704992455.f1, SequenceMachineLib.memo_apply]; omega⟩) _
