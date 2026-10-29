import Prog.A100.A1002
import Proof.Lib.PrimesMod

/-- A100201 lists the primes congruent to 3 mod 23. -/
theorem A100201.anchor (n : ℕ) (hn : 1 ≤ n) :
    A100201 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 3) (n - 1) : ℤ) := by
  simp only [A100201, A100201.P2773877056917933815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A100201.P2773877056917933815.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A100201.P2773877056917933815.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A100201.P2773877056917933815.f1, SequenceMachineLib.memo_apply]; omega⟩) _
