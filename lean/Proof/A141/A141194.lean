import Prog.A141.A1411
import Proof.Lib.PrimesMod

/-- A141194 lists the primes congruent to 7 mod 16. -/
theorem A141194.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141194 n = (Nat.nth (fun p => p.Prime ∧ p % 16 = 7) (n - 1) : ℤ) := by
  simp only [A141194, A141194.P3921873644654613885.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 16 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141194.P3921873644654613885.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141194.P3921873644654613885.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 16, by simp only [A141194.P3921873644654613885.f1, SequenceMachineLib.memo_apply]; omega⟩) _
