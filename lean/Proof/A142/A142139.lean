import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142139 lists the primes congruent to 30 mod 37. -/
theorem A142139.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142139 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 30) (n - 1) : ℤ) := by
  simp only [A142139, A142139.P4780684413859799696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142139.P4780684413859799696.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142139.P4780684413859799696.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 37, by simp only [A142139.P4780684413859799696.f1, SequenceMachineLib.memo_apply]; omega⟩) _
