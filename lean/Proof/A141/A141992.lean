import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141992 lists the primes congruent to 16 mod 29. -/
theorem A141992.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141992 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 16) (n - 1) : ℤ) := by
  simp only [A141992, A141992.P9628899648759679825.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141992.P9628899648759679825.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141992.P9628899648759679825.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 29, by simp only [A141992.P9628899648759679825.f1, SequenceMachineLib.memo_apply]; omega⟩) _
