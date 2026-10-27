import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142447 lists the primes congruent to 39 mod 49. -/
theorem A142447.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142447 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 39) (n - 1) : ℤ) := by
  simp only [A142447, A142447.P11000626731989421513.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142447.P11000626731989421513.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142447.P11000626731989421513.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 49, by simp only [A142447.P11000626731989421513.f1, SequenceMachineLib.memo_apply]; omega⟩) _
