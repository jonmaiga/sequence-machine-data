import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142686 lists the primes congruent to 34 mod 57. -/
theorem A142686.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142686 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 34) (n - 1) : ℤ) := by
  simp only [A142686, A142686.P8975665842912879093.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142686.P8975665842912879093.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142686.P8975665842912879093.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 57, by simp only [A142686.P8975665842912879093.f1, SequenceMachineLib.memo_apply]; omega⟩) _
