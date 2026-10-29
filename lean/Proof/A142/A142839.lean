import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142839 lists the primes congruent to 41 mod 61. -/
theorem A142839.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142839 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 41) (n - 1) : ℤ) := by
  simp only [A142839, A142839.P8312266947308202852.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142839.P8312266947308202852.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142839.P8312266947308202852.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 20) / 61, by simp only [A142839.P8312266947308202852.f1, SequenceMachineLib.memo_apply]; omega⟩) _
