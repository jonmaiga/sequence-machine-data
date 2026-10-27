import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142545 lists the primes congruent to 15 mod 53. -/
theorem A142545.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142545 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 15) (n - 1) : ℤ) := by
  simp only [A142545, A142545.P10300672822079420733.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142545.P10300672822079420733.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142545.P10300672822079420733.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142545.P10300672822079420733.f1, SequenceMachineLib.memo_apply]; omega⟩) _
