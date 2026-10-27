import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142090 lists the primes congruent to 22 mod 35. -/
theorem A142090.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142090 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 22) (n - 1) : ℤ) := by
  simp only [A142090, A142090.P301763299342873140.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142090.P301763299342873140.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142090.P301763299342873140.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 35, by simp only [A142090.P301763299342873140.f1, SequenceMachineLib.memo_apply]; omega⟩) _
