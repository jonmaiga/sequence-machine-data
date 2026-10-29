import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142272 lists the primes congruent to 23 mod 43. -/
theorem A142272.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142272 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 23) (n - 1) : ℤ) := by
  simp only [A142272, A142272.P13556938270763829172.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142272.P13556938270763829172.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142272.P13556938270763829172.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 20) / 43, by simp only [A142272.P13556938270763829172.f1, SequenceMachineLib.memo_apply]; omega⟩) _
