import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142430 lists the primes congruent to 19 mod 49. -/
theorem A142430.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142430 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 19) (n - 1) : ℤ) := by
  simp only [A142430, A142430.P1326271075177512410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142430.P1326271075177512410.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142430.P1326271075177512410.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142430.P1326271075177512410.f1, SequenceMachineLib.memo_apply]; omega⟩) _
