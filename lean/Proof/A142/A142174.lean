import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142174 lists the primes congruent to 25 mod 39. -/
theorem A142174.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142174 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 25) (n - 1) : ℤ) := by
  simp only [A142174, A142174.P10215529743714880878.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142174.P10215529743714880878.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142174.P10215529743714880878.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 14) / 39, by simp only [A142174.P10215529743714880878.f1, SequenceMachineLib.memo_apply]; omega⟩) _
