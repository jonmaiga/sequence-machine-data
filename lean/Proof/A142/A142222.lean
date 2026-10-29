import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142222 lists the primes congruent to 25 mod 41. -/
theorem A142222.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142222 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 25) (n - 1) : ℤ) := by
  simp only [A142222, A142222.P16922046931421411177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142222.P16922046931421411177.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142222.P16922046931421411177.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 41, by simp only [A142222.P16922046931421411177.f1, SequenceMachineLib.memo_apply]; omega⟩) _
