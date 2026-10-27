import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142692 lists the primes congruent to 44 mod 57. -/
theorem A142692.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142692 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 44) (n - 1) : ℤ) := by
  simp only [A142692, A142692.P4190453748411724649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142692.P4190453748411724649.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142692.P4190453748411724649.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 57, by simp only [A142692.P4190453748411724649.f1, SequenceMachineLib.memo_apply]; omega⟩) _
