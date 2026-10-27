import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142760 lists the primes congruent to 33 mod 59. -/
theorem A142760.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142760 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 33) (n - 1) : ℤ) := by
  simp only [A142760, A142760.P3684195330162948718.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142760.P3684195330162948718.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142760.P3684195330162948718.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 26) / 59, by simp only [A142760.P3684195330162948718.f1, SequenceMachineLib.memo_apply]; omega⟩) _
