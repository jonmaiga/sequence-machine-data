import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142280 lists the primes congruent to 31 mod 43. -/
theorem A142280.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142280 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 31) (n - 1) : ℤ) := by
  simp only [A142280, A142280.P4564830932489439284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142280.P4564830932489439284.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142280.P4564830932489439284.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 43, by simp only [A142280.P4564830932489439284.f1, SequenceMachineLib.memo_apply]; omega⟩) _
