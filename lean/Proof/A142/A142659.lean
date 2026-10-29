import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142659 lists the primes congruent to 43 mod 56. -/
theorem A142659.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142659 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 43) (n - 1) : ℤ) := by
  simp only [A142659, A142659.P9757230682004974696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142659.P9757230682004974696.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142659.P9757230682004974696.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 56, by simp only [A142659.P9757230682004974696.f1, SequenceMachineLib.memo_apply]; omega⟩) _
