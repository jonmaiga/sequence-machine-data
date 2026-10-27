import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142235 lists the primes congruent to 38 mod 41. -/
theorem A142235.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142235 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 38) (n - 1) : ℤ) := by
  simp only [A142235, A142235.P6343162341857643326.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142235.P6343162341857643326.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142235.P6343162341857643326.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 41, by simp only [A142235.P6343162341857643326.f1, SequenceMachineLib.memo_apply]; omega⟩) _
