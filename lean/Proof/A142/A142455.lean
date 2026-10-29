import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142455 lists the primes congruent to 48 mod 49. -/
theorem A142455.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142455 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 48) (n - 1) : ℤ) := by
  simp only [A142455, A142455.P9568799611182206456.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 48 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142455.P9568799611182206456.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142455.P9568799611182206456.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 49, by simp only [A142455.P9568799611182206456.f1, SequenceMachineLib.memo_apply]; omega⟩) _
