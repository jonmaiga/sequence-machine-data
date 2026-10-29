import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142819 lists the primes congruent to 21 mod 61. -/
theorem A142819.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142819 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 21) (n - 1) : ℤ) := by
  simp only [A142819, A142819.P2383881570244080223.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142819.P2383881570244080223.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142819.P2383881570244080223.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142819.P2383881570244080223.f1, SequenceMachineLib.memo_apply]; omega⟩) _
