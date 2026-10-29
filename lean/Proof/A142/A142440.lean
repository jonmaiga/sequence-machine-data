import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142440 lists the primes congruent to 31 mod 49. -/
theorem A142440.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142440 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 31) (n - 1) : ℤ) := by
  simp only [A142440, A142440.P830069249170132830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142440.P830069249170132830.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142440.P830069249170132830.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 49, by simp only [A142440.P830069249170132830.f1, SequenceMachineLib.memo_apply]; omega⟩) _
