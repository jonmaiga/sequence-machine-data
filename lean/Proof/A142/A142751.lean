import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142751 lists the primes congruent to 24 mod 59. -/
theorem A142751.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142751 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 24) (n - 1) : ℤ) := by
  simp only [A142751, A142751.P15092696060650891724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142751.P15092696060650891724.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142751.P15092696060650891724.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142751.P15092696060650891724.f1, SequenceMachineLib.memo_apply]; omega⟩) _
