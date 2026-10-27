import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142054 lists the primes congruent to 8 mod 33. -/
theorem A142054.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142054 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 8) (n - 1) : ℤ) := by
  simp only [A142054, A142054.P11674088080574549015.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 33 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142054.P11674088080574549015.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142054.P11674088080574549015.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 33, by simp only [A142054.P11674088080574549015.f1, SequenceMachineLib.memo_apply]; omega⟩) _
