import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142581 lists the primes congruent to 51 mod 53. -/
theorem A142581.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142581 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 51) (n - 1) : ℤ) := by
  simp only [A142581, A142581.P17450910249963365285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 51 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142581.P17450910249963365285.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142581.P17450910249963365285.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 53, by simp only [A142581.P17450910249963365285.f1, SequenceMachineLib.memo_apply]; omega⟩) _
