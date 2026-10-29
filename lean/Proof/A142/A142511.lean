import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142511 lists the primes congruent to 7 mod 52. -/
theorem A142511.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142511 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 7) (n - 1) : ℤ) := by
  simp only [A142511, A142511.P4190831569276020721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142511.P4190831569276020721.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142511.P4190831569276020721.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142511.P4190831569276020721.f1, SequenceMachineLib.memo_apply]; omega⟩) _
