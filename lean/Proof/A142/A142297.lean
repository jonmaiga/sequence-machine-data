import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142297 lists the primes congruent to 13 mod 44. -/
theorem A142297.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142297 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 13) (n - 1) : ℤ) := by
  simp only [A142297, A142297.P4333875725822880942.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142297.P4333875725822880942.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142297.P4333875725822880942.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 31) / 44, by simp only [A142297.P4333875725822880942.f1, SequenceMachineLib.memo_apply]; omega⟩) _
