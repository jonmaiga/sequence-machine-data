import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142081 lists the primes congruent to 8 mod 35. -/
theorem A142081.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142081 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 8) (n - 1) : ℤ) := by
  simp only [A142081, A142081.P12117061539707555917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142081.P12117061539707555917.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142081.P12117061539707555917.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142081.P12117061539707555917.f1, SequenceMachineLib.memo_apply]; omega⟩) _
