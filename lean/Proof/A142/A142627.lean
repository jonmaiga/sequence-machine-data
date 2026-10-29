import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142627 lists the primes congruent to 37 mod 55. -/
theorem A142627.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142627 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 37) (n - 1) : ℤ) := by
  simp only [A142627, A142627.P16396962242143704151.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142627.P16396962242143704151.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142627.P16396962242143704151.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 55, by simp only [A142627.P16396962242143704151.f1, SequenceMachineLib.memo_apply]; omega⟩) _
