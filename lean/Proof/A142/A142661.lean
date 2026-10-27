import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142661 lists the primes congruent to 47 mod 56. -/
theorem A142661.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142661 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 47) (n - 1) : ℤ) := by
  simp only [A142661, A142661.P9427666565187802115.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142661.P9427666565187802115.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142661.P9427666565187802115.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 56, by simp only [A142661.P9427666565187802115.f1, SequenceMachineLib.memo_apply]; omega⟩) _
