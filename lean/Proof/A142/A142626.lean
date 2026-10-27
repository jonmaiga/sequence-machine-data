import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142626 lists the primes congruent to 36 mod 55. -/
theorem A142626.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142626 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 36) (n - 1) : ℤ) := by
  simp only [A142626, A142626.P12338167101848309519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142626.P12338167101848309519.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142626.P12338167101848309519.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 55, by simp only [A142626.P12338167101848309519.f1, SequenceMachineLib.memo_apply]; omega⟩) _
