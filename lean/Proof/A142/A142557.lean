import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142557 lists the primes congruent to 27 mod 53. -/
theorem A142557.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142557 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 27) (n - 1) : ℤ) := by
  simp only [A142557, A142557.P17053330527406815909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142557.P17053330527406815909.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142557.P17053330527406815909.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 26) / 53, by simp only [A142557.P17053330527406815909.f1, SequenceMachineLib.memo_apply]; omega⟩) _
