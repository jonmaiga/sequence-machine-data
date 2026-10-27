import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142198 lists the primes congruent to 39 mod 40. -/
theorem A142198.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142198 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 39) (n - 1) : ℤ) := by
  simp only [A142198, A142198.P1079602201654401913.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142198.P1079602201654401913.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142198.P1079602201654401913.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 40, by simp only [A142198.P1079602201654401913.f1, SequenceMachineLib.memo_apply]; omega⟩) _
