import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142221 lists the primes congruent to 24 mod 41. -/
theorem A142221.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142221 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 24) (n - 1) : ℤ) := by
  simp only [A142221, A142221.P9571681019084595322.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142221.P9571681019084595322.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142221.P9571681019084595322.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 41, by simp only [A142221.P9571681019084595322.f1, SequenceMachineLib.memo_apply]; omega⟩) _
