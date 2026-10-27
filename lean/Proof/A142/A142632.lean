import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142632 lists the primes congruent to 43 mod 55. -/
theorem A142632.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142632 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 43) (n - 1) : ℤ) := by
  simp only [A142632, A142632.P14212778815987626315.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142632.P14212778815987626315.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142632.P14212778815987626315.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 55, by simp only [A142632.P14212778815987626315.f1, SequenceMachineLib.memo_apply]; omega⟩) _
