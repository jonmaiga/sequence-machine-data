import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142825 lists the primes congruent to 27 mod 61. -/
theorem A142825.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142825 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 27) (n - 1) : ℤ) := by
  simp only [A142825, A142825.P9734466294644144013.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142825.P9734466294644144013.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142825.P9734466294644144013.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 34) / 61, by simp only [A142825.P9734466294644144013.f1, SequenceMachineLib.memo_apply]; omega⟩) _
