import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142087 lists the primes congruent to 17 mod 35. -/
theorem A142087.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142087 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 17) (n - 1) : ℤ) := by
  simp only [A142087, A142087.P14344118086552666950.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142087.P14344118086552666950.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142087.P14344118086552666950.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 35, by simp only [A142087.P14344118086552666950.f1, SequenceMachineLib.memo_apply]; omega⟩) _
