import Prog.A095.A0959
import Proof.Lib.PrimesMod

/-- A095995 lists the primes congruent to 99 mod 100. -/
theorem A095995.anchor (n : ℕ) (hn : 1 ≤ n) :
    A095995 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 99) (n - 1) : ℤ) := by
  simp only [A095995, A095995.P3218875470991724980.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 99 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A095995.P3218875470991724980.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A095995.P3218875470991724980.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 100, by simp only [A095995.P3218875470991724980.f1, SequenceMachineLib.memo_apply]; omega⟩) _
