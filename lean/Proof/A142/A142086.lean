import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142086 lists the primes congruent to 16 mod 35. -/
theorem A142086.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142086 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 16) (n - 1) : ℤ) := by
  simp only [A142086, A142086.P6530813108441564761.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142086.P6530813108441564761.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142086.P6530813108441564761.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 35, by simp only [A142086.P6530813108441564761.f1, SequenceMachineLib.memo_apply]; omega⟩) _
