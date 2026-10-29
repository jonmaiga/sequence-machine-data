import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142482 lists the primes congruent to 10 mod 51. -/
theorem A142482.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142482 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 10) (n - 1) : ℤ) := by
  simp only [A142482, A142482.P9448669777898470811.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142482.P9448669777898470811.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142482.P9448669777898470811.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142482.P9448669777898470811.f1, SequenceMachineLib.memo_apply]; omega⟩) _
