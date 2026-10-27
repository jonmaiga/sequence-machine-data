import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142055 lists the primes congruent to 10 mod 33. -/
theorem A142055.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142055 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 10) (n - 1) : ℤ) := by
  simp only [A142055, A142055.P2924894407730717356.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 33 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142055.P2924894407730717356.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142055.P2924894407730717356.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 33, by simp only [A142055.P2924894407730717356.f1, SequenceMachineLib.memo_apply]; omega⟩) _
