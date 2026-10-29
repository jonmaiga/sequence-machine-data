import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142911 lists the primes congruent to 40 mod 63. -/
theorem A142911.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142911 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 40) (n - 1) : ℤ) := by
  simp only [A142911, A142911.P11217717950147313963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142911.P11217717950147313963.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142911.P11217717950147313963.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 63, by simp only [A142911.P11217717950147313963.f1, SequenceMachineLib.memo_apply]; omega⟩) _
