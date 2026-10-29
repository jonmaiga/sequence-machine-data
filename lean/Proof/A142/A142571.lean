import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142571 lists the primes congruent to 41 mod 53. -/
theorem A142571.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142571 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 41) (n - 1) : ℤ) := by
  simp only [A142571, A142571.P10702951705278210587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142571.P10702951705278210587.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142571.P10702951705278210587.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 53, by simp only [A142571.P10702951705278210587.f1, SequenceMachineLib.memo_apply]; omega⟩) _
