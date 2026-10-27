import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142084 lists the primes congruent to 12 mod 35. -/
theorem A142084.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142084 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 12) (n - 1) : ℤ) := by
  simp only [A142084, A142084.P10505866821454008841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142084.P10505866821454008841.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142084.P10505866821454008841.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142084.P10505866821454008841.f1, SequenceMachineLib.memo_apply]; omega⟩) _
