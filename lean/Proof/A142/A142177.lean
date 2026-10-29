import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142177 lists the primes congruent to 31 mod 39. -/
theorem A142177.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142177 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 31) (n - 1) : ℤ) := by
  simp only [A142177, A142177.P14973679103742064160.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142177.P14973679103742064160.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142177.P14973679103742064160.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 39, by simp only [A142177.P14973679103742064160.f1, SequenceMachineLib.memo_apply]; omega⟩) _
