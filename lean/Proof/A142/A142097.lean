import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142097 lists the primes congruent to 32 mod 35. -/
theorem A142097.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142097 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 32) (n - 1) : ℤ) := by
  simp only [A142097, A142097.P18409017806951583958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142097.P18409017806951583958.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142097.P18409017806951583958.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 35, by simp only [A142097.P18409017806951583958.f1, SequenceMachineLib.memo_apply]; omega⟩) _
