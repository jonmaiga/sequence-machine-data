import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142923 lists the primes congruent to 61 mod 63. -/
theorem A142923.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142923 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 61) (n - 1) : ℤ) := by
  simp only [A142923, A142923.P6677659099145543344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 61 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142923.P6677659099145543344.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142923.P6677659099145543344.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 63, by simp only [A142923.P6677659099145543344.f1, SequenceMachineLib.memo_apply]; omega⟩) _
