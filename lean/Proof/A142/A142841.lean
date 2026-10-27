import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142841 lists the primes congruent to 43 mod 61. -/
theorem A142841.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142841 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 43) (n - 1) : ℤ) := by
  simp only [A142841, A142841.P1101289160815567107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142841.P1101289160815567107.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142841.P1101289160815567107.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 61, by simp only [A142841.P1101289160815567107.f1, SequenceMachineLib.memo_apply]; omega⟩) _
